import 'package:flutter/material.dart';
import 'package:mobile_app/Admin/admin_login.dart';
import 'package:mobile_app/screens/Splash_Screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mobile_app/services/constant.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey=publishablekey;
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBlLkHzCusQYUfXt4FZxAesxpUFPHtSPtc",
          appId: "1:844337102334:android:a7ab34319430c3150314af",
          messagingSenderId: "844337102334",
          projectId: "mobileapp-a5c77",
          storageBucket: "mobileapp-a5c77.appspot.com"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
