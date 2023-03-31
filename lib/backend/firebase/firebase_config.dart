import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDkuqAnXkmA4Bskb9yyEC0jRz965Czs4TQ",
            authDomain: "kheti-906af.firebaseapp.com",
            projectId: "kheti-906af",
            storageBucket: "kheti-906af.appspot.com",
            messagingSenderId: "783652409256",
            appId: "1:783652409256:web:24d825353866f18135d79d",
            measurementId: "G-JJH88KBSLC"));
  } else {
    await Firebase.initializeApp();
  }
}
