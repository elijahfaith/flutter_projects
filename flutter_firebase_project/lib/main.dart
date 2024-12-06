import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_project/CRUD%20FIREBASE/crude_operation.dart';
import 'package:flutter_firebase_project/Firebase_Auth/Firebase_login.dart';
import 'package:flutter_firebase_project/login_page.dart';
import 'package:flutter_firebase_project/store_data_infofirebase.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
          apiKey: "AIzaSyDdG4TJp3SwOgVPPWWYZ56ejmpx5NkTxv8",
          appId: "1:26450478700:android:43b7b07a1f1858fb513a49",
          messagingSenderId: "26450478700",
          projectId: "flutter-firebase-8f88a",
          storageBucket: "flutter-firebase-8f88a.appspot.com")
  );
  final fcmToken = await FirebaseMessaging.instance.getToken();
  print(fcmToken);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: FirebaseLogin(),
    );
  }
}

