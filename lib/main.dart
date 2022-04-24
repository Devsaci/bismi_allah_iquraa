import 'package:bismi_allah_iquraa/constants/constants.dart';
import 'package:bismi_allah_iquraa/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BISMI ALLAH IQRAE',
      theme: ThemeData(
        primarySwatch: Constants.kSwatchColor,
        fontFamily: 'Poppins'
      ),
      home:  SplashScreen(),
    );
  }
}


