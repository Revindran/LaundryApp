import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundryapp/view/bottom_bar.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Get.off(() => BottomBarHome());
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Lottie.asset(
            'assets/laundry_animation.json',
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 100,
              child: DefaultTextStyle(
                style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
                child: AnimatedTextKit(
                  animatedTexts: [
                    FadeAnimatedText('Laundry'),
                    FadeAnimatedText('Laundry App'),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: TextLiquidFill(
              boxWidth: Get.width,
              text: 'Laundry',
              waveColor: Colors.blueAccent,
              boxBackgroundColor: Colors.transparent,
              textStyle: TextStyle(
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
