import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'auth/components/login_ui.dart';

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
      Get.off(() => LoginPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 200),
                child: Lottie.asset(
                  'assets/laundry_animation.json',
                ),
              ),
            ),
            DefaultTextStyle(
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
      ),
    );
  }
}
