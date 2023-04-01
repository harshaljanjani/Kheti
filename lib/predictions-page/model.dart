import 'dart:core';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(new MaterialApp(home: new Main()));

class Main extends StatelessWidget {
  late int area;
  late String district;
  late String season;

//METHOD TO PREDICT PRICE
  Future<String?> predictPrice(var body) async {
    var client = new http.Client();
    var uri = Uri.parse("http://192.168.1.101:5000/predict");
    Map<String, String> headers = {"Content-type": "application/json"};
    String jsonString = json.encode(body);
    try {
      var resp = await client.post(uri, headers: headers, body: jsonString);
      //var resp=await http.get(Uri.parse("http://192.168.1.101:5000"));
      if (resp.statusCode == 200) {
        print("DATA FETCHED SUCCESSFULLY");
        var result = json.decode(resp.body);
        print(result["prediction"]);
        return result["prediction"];
      }
    } catch (e) {
      print("EXCEPTION OCCURRED: $e");
      return null;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Area Of The Farmland',
                  ),
                  onChanged: (val) {
                    area = int.parse(val);
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter District Of Residence',
                  ),
                  onChanged: (val) {
                    district = val;
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Season Of The Year',
                  ),
                  onChanged: (val) {
                    season = val;
                  },
                ),
                ElevatedButton(
                  onPressed: () async {
                    var body = [
                      {
                        "location": district,
                        "area": area,
                        "season": season,
                      }
                    ];

                    print(body);
                    var resp = await predictPrice(body);
                    _onBasicAlertPressed(context, resp);
                  },
                  child: Text("Recommend Crop"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//function from rflutter pkg to display alert
_onBasicAlertPressed(context, resp) {
  Alert(context: context, title: "Predicted price", desc: resp).show();
}
