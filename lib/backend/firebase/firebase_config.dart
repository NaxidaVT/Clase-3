import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDhxv0y73dUMe4m98r02DJR6HezacGUmwU",
            authDomain: "fir-0ql0eq.firebaseapp.com",
            projectId: "firebase-0ql0eq",
            storageBucket: "firebase-0ql0eq.appspot.com",
            messagingSenderId: "125496307898",
            appId: "1:125496307898:web:c75cfe4b67f83f272a5283"));
  } else {
    await Firebase.initializeApp();
  }
}
