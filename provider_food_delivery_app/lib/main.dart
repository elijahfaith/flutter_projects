import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_food_delivery_app/auth/login_or_register_page.dart';
import 'package:provider_food_delivery_app/model/restaurant.dart';
import 'package:provider_food_delivery_app/themes/theme_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Restaurant(),
        )
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegisterPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
