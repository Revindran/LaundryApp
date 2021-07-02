import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laundryapp/constants/app_theme.dart';
import 'package:laundryapp/constants/validator.dart';

Widget customFormField(
    {required TextEditingController controller,
    required String labelText,
    required Icon icon,
    required String validator,
    obscureText = false}) {
  var validatingType;

  if (validator == "pass") {
    validatingType = Validator().validatePassword;
  } else if (validator == "email") {
    validatingType = Validator().validateEmail;
  } else if (validator == "name") {
    validatingType = Validator().validateName;
  } else {
    validatingType = Validator().validateName;
  }

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      obscureText: obscureText,
      controller: controller,
      onChanged: (value) => null,
      validator: Validator().validateName,
      onSaved: (value) => controller.text = value!,
      cursorColor: AppThemes.Primarycolor,
      decoration: InputDecoration(
        prefixIcon: icon,
        labelText: labelText,
        labelStyle: TextStyle(color: AppThemes.Primarycolor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: AppThemes.Primarycolor,
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: Colors.white,
            width: 2.0,
          ),
        ),
      ),
    ),
  );
}
