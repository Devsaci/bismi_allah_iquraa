import 'package:bismi_allah_iquraa/constants/constants.dart';
import 'package:bismi_allah_iquraa/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Read Quran",
            bodyWidget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text("Click on "),

              ],
            ),
            image: Center(child: Image.asset('assets/quran.png',fit: BoxFit.fitWidth,)),
          ),

        ],


        onDone: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ));
        },
        // onSkip: () {
        //   // You can also override onSkip callback
        // },
        // showBackButton: false,
        // showSkipButton: true,
        showNextButton: false,
        skip: const Icon(Icons.arrow_forward, color: Colors.black),
        // skip:  const Icon(Icons.skip_next),
        // next:  const Icon(Icons.next_plan),
        done: const Text("Done",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            // activeColor: theme.accentColor,
            color: Constants.kPrimary,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
      ),
    ));
  }
}
