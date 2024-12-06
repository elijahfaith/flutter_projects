import 'package:flutter/material.dart';

import 'package:greenleaf_project/pages/splash_screen.dart';

import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyBt1Hdmonf28iv7egxRq7BWt9349IVZayw",
    appId: "1:103698092077:android:65d9f96e813814f09628a4",
    messagingSenderId: "103698092077",
    projectId: "greenleaf-2f818",
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
