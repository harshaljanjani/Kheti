# <ins>Kheti</ins> - <ins>Grow</ins> <ins>More</ins> <ins>With</ins> <ins>Less</ins>

## <ins>Getting</ins> <ins>Started</ins>
This project was created as part of a **12-hour business hackathon**, and is built to run on the Flutter _stable_ release.

## <ins>Important</ins>
For projects with Firestore integration, you must first run the following commands to ensure the project compiles:

```
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
```

This command creates the generated files that parse each Record from Firestore into a schema object.

## <ins>About</ins> <ins>The</ins> <ins>Project</ins>
<img width="600" alt="image" src="https://user-images.githubusercontent.com/75426551/230645264-cc598ef0-d078-44d9-9a1d-f1ee3267f668.png">

## <ins>Abstract</ins>
The application aims to build a **smart marketplace**, **that connects crop vendors to farmers in India**. Information regarding the location of farmers, availability of crops, the weather conditions and the plantation area would empower us to suggest a **curated selection of crops**, recommend **crop cycles** and a suitable division of land that would enable the farmer to **maximize their overall yield**.

## <ins>Unique</ins> <ins>Selling</ins> <ins>Points</ins>
1) Recommends crops to plant depending on the time of the year, their **geolocation** and other factors.
2) Suggests suitable vendors according to the the availability of the aforementioned crops.
3) Helps reduce capital consumption of farmers by offering a multitude of vendors to select from.
4) We also have an **Aadhar Card Verification System** in place, for verifying the farmers identity before any transaction takes place.
5) Benefits the vendors by connecting them directly to a huge and diverse market of farmers.

## <ins>Methodology</ins>
1) Creating a database for all the vendors and farmers (to securely store their credentials), based on their location data collected from a **Google Maps** API integrated directly into the app.
2) Making a curated selection of crops for the farmer, using suitable machine learning algorithms (Random Forest Classifier).
3) Verifying farmer’s identity (Aadhar Card) using a CNN (Convolutional Neural Network) model.
4) Creating a **smart marketplace** to connect all the crop vendors and farmers by **filtering** vendors based on location, and **sorting** based on price.

## <ins>Social</ins> <ins>Impact</ins>
Our digital footprint of all farmers and vendors will make it easy to integrate **government welfare schemes**, thus ensuring **maximum reach to each of the parties** through our app.
As the agriculture industry in India grows exponentially, more and more farmers are starting to adopt technology. Thus we are providing a digital solution to not only **reduce the capital** required for farming, but also **maximize the yield** using the power of machine learning.

## <ins>Market</ins> <ins>Competitors</ins>
Our competitors are mostly **small-scale government schemes** which **lack full-implementation** or **fall prey to corruption**. Thus, we intend to put forward a digital solution to minimize the hassle of procurement of right seeds, choosing the right vendor/getting the best prices and attaining **maximum yield for the farmers**. 

## <ins>Tech</ins> <ins>Stack</ins>
 1) Flutter/Dart
 2) Firebase 
 3) Tensorflow and Keras (**CNN Documentation/Aadhar Check Model**)
 4) Scikit-Learn (**Random Forest Crop Recommender System**)
 5) Flask
 6) **Tools** - FlutterFlow (UI/UX) and Postman (API Testing).
 6) **API's** - Google Maps in Flutter and Real-Time Crop Prices Data.

## <ins>In-App</ins> <ins>Screenshots</ins>
<img width="400" alt="image" src="https://user-images.githubusercontent.com/75426551/230644585-ce64f00d-136f-4d70-adb8-54543dc05f03.png">
<img width="400" alt="image" src="https://user-images.githubusercontent.com/75426551/230644915-316f5eee-5df6-4fc2-8e3a-e7066e0503d9.png">
<img width="400" alt="image" src="https://user-images.githubusercontent.com/75426551/230644442-97295817-eae9-4b4a-9f5d-60fa73f56181.png">
