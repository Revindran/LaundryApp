import 'package:flutter/material.dart';

import 'components/ui_components.dart';
import 'login_ui.dart';

class ResetPasswordUi extends StatelessWidget {
  ResetPasswordUi({Key? key}) : super(key: key);

  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            FadeAnimation(
              1,
              Text(
                "Reset Password",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                FadeAnimation(
                  1.3,
                  customEmailField(_mailController),
                ),
                SizedBox(
                  height: 10,
                ),
                FadeAnimation(
                  1.3,
                  customPasswordFormField(_passController),
                ),
              ],
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
                    onPressed: () {},
                    color: Colors.blueGrey,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Reset",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
