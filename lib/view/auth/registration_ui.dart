import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundryapp/controllers/auth_controller.dart';

import 'components/ui_components.dart';
import 'login_ui.dart';

class RegisterUi extends StatelessWidget {
  RegisterUi({Key? key}) : super(key: key);

  final _controller = Get.put<AuthController>(AuthController());

  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
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
                    customFormField(_nameController, "Enter Your Name",
                        Icons.person, false),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FadeAnimation(
                    1.2,
                    customFormField(
                        _mailController, "Enter Your Email", Icons.mail, false),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FadeAnimation(
                    1.2,
                    customFormField(_phoneController, "Enter Your Phone Number",
                        Icons.phone, false),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FadeAnimation(
                    1.3,
                    customFormField(_passController, "Enter Your Password",
                        Icons.password, true),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FadeAnimation(
                    1.3,
                    customFormField(_confirmPassController, "Confirm Password",
                        Icons.password, true),
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
                      _controller.apiRegister(
                          _mailController,
                          _nameController,
                          _passController,
                          _confirmPassController,
                          _phoneController);
                    },
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
