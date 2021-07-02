import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/ui_components.dart';
import 'login_ui.dart';

class RegisterUi extends StatelessWidget {
  RegisterUi({Key? key}) : super(key: key);

  TextEditingController _mailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                "Register",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  FadeAnimation(
                    1.2,
                    // makeInput(label: "Email", icon: Icon(Icons.person)),
                    customFormField(
                        controller: _mailController,
                        icon: Icon(Icons.mail),
                        labelText: "Name",
                        validator: "name"),
                  ),
                  FadeAnimation(
                    1.2,
                    // makeInput(label: "Email", icon: Icon(Icons.person)),
                    customFormField(
                        controller: _mailController,
                        icon: Icon(Icons.mail),
                        labelText: "Last Name",
                        validator: "name"),
                  ),
                  FadeAnimation(
                    1.3,
                    customFormField(
                      controller: _passController,
                      icon: Icon(Icons.security),
                      labelText: "Email",
                      validator: "email",
                    ),
                  ),
                  FadeAnimation(
                    1.3,
                    customFormField(
                        controller: _passController,
                        icon: Icon(Icons.security),
                        labelText: "Password",
                        validator: "pass",
                        obscureText: true),
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
                    onPressed: () {},
                    color: Colors.blueGrey,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Register",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
