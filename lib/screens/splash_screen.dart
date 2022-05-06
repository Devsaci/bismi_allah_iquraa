import 'dart:async';
import 'dart:ui';

import 'package:bismi_allah_iquraa/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
       Duration(seconds: 1), () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>  OnBoardingScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
             Center(
              child: Text(
                "BISMI ALLAH IQRAE",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset('assets/islamic.png'),
            ),
          ],
        ),
      ),
    );
  }
}
