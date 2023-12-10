import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCYyJ14-JK6tdRC8W-_e_09j7YU9NaTUNc",
            authDomain: "bugget-5c900.firebaseapp.com",
            projectId: "bugget",
            storageBucket: "bugget.appspot.com",
            messagingSenderId: "439028653682",
            appId: "1:439028653682:web:932e0b9e4b46942fef6ceb",
            measurementId: "G-KXS4BGP8HF"));
  } else {
    await Firebase.initializeApp();
  }
}
