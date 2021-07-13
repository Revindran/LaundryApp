import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundryapp/controllers/auth_controller.dart';
import 'package:laundryapp/view/auth/registration_ui.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_animations/simple_animations.dart';

import 'components/ui_components.dart';
import 'reset_password_ui.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                FadeAnimation(
                    1.2,
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Lottie.asset("assets/cloths.json"),
                      ),
                    )),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: <Widget>[
                    FadeAnimation(
                        1,
                        Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w600),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(
                        1.2,
                        // makeInput(label: "Email", icon: Icon(Icons.person)),
                        customEmailField(_mailController),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                        1.3,
                        customPasswordFormField(_passController),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      FadeAnimation(
                        1.5,
                        InkWell(
                          onTap: () => Get.to(() => ResetPasswordUi()),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Forgot Password?"),
                              Text(
                                " Reset Now",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                FadeAnimation(
                  1.4,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      padding: EdgeInsets.only(top: 3, left: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          )),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          _controller.apiLogin(
                              _mailController, _passController);
                        },
                        color: Colors.blueGrey,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                FadeAnimation(
                  1.4,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      padding: EdgeInsets.only(top: 3, left: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          )),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Get.to(() => RegisterUi());
                        },
                        color: Colors.blueGrey,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "Register",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 70),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TextLiquidFill(
                    boxWidth: Get.width,
                    text: 'Laundry',
                    loadDuration: Duration(seconds: 30),
                    waveDuration: Duration(seconds: 3),
                    waveColor: Colors.blueAccent,
                    boxBackgroundColor: Colors.transparent,
                    boxHeight: 100.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget makeInput({label, obscureText = false, icon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.grey[400]),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          style: TextStyle(color: Colors.white),
          obscureText: obscureText,
          decoration: InputDecoration(
            prefixIcon: icon,
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

enum AnimationType { opacity, translateX }

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  const FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<AnimationType>()
      ..add(
        AnimationType.opacity,
        Tween(begin: 0.0, end: 1.0),
        Duration(milliseconds: 500),
      )
      ..add(
        AnimationType.translateX,
        Tween(begin: 30.0, end: 1.0),
        Duration(milliseconds: 500),
      );

    return PlayAnimation<MultiTweenValues<AnimationType>>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, child, value) => Opacity(
        opacity: value.get(AnimationType.opacity),
        child: Transform.translate(
            offset: Offset(value.get(AnimationType.translateX), 0),
            child: child),
      ),
    );
  }
}
