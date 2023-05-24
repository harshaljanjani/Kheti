from flask import Flask, jsonify, request
import pandas as pd
import joblib
from flask_restful import reqparse
app = Flask(__name__)

@app.route('/predict', methods=['POST'])
def predict():
  model = joblib.load("kheti_app\lib\ml-model\model.sav")
  input_location = str()
  input_season = str()
  input_area = int()
  district_name_col = f'District_Name_{input_location}'
  X = pd.read_csv('kheti_app\lib\ml-assets\AgricultureDataset.csv')
  if district_name_col not in X.columns:
      raise ValueError(f'Invalid district name: {input_location}')
  season_col = f'Season_{input_season}'
  crop_columns = [col for col in X.columns if col.startswith('Crop_')]
  #print(crop_columns)
  input_data = []
  seasonal_data = []
  data = []
  for crop in crop_columns:
      crop_name = crop.split('_')[1]
      seasonal_data_row = seasonal_data[(seasonal_data['Crop'] == crop_name) & (seasonal_data['Season'] == input_season)]
      if not seasonal_data_row.empty:
          mean_area_value = seasonal_data_row['MeanArea'].values[0]
          mean_production_value = seasonal_data_row['MeanProduction'].values[0]
          seasonal_area_ratio_value = input_area / mean_area_value
      else:
          groupby_columns = crop_columns + ['Area', 'Production']
          crop_data = data.groupby(groupby_columns, as_index=False).agg({'Area': 'mean', 'Production': 'mean'})
          mean_area_value = crop_data[crop_data[crop] == 1]['Area'].values[0]
          mean_production_value = crop_data[crop_data[crop] == 1]['Production'].values[0]
          seasonal_area_ratio_value = input_area / mean_area_value
      row = {district_name_col: 1, 'Area': input_area, season_col: 1, 'SeasonalAreaRatio': seasonal_area_ratio_value}
      for c in crop_columns:
          row[c] = 1 if c == crop else 0
      input_data.append(row)
  input_data = pd.DataFrame(input_data).reindex(columns=X.columns, fill_value=0)
  input_data = input_data.fillna(input_data.mean())
  #print(input_data.head())

  predictions = model.predict(input_data)
  recommended_crop_index = predictions.argmax()
  recommended_crop = crop_columns[recommended_crop_index].split('_')[1]
  return jsonify(f'The recommended crop for location: {input_location}, area: {input_area}, and season: {input_season} is {recommended_crop}.')

