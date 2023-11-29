import 'package:flutter/material.dart';
import 'package:practice_design_1/screens/login_screen.dart';
import 'package:practice_design_1/screens/onboarding_screen.dart';
import 'package:practice_design_1/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-Commerce Shopping",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lato',
        primaryColor: Color(0xFFEF6969),
      ),
      home: SplashScreen(),
    );
  }
}
