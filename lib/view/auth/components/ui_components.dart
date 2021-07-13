import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:laundryapp/constants/validator.dart';
import 'package:laundryapp/view/home/home_screen.dart';

customPasswordFormField(TextEditingController controller) {
  return TextFormField(
    obscureText: true,
    controller: controller,
    onChanged: (value) => null,
    validator: Validator().validatePassword,
    cursorColor: Colors.grey,
    onSaved: (value) => controller.text = value!,
    decoration: InputDecoration(
      prefixIcon: Icon(
        Icons.keyboard_outlined,
        color: Colors.grey,
      ),
      labelText: "Enter Your Password",
      labelStyle: TextStyle(color: Colors.grey),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 2.0,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 2.0,
        ),
      ),
    ),
  );
}

customNameFormField(TextEditingController controller) {
  return TextFormField(
    controller: controller,
    onChanged: (value) => null,
    onSaved: (value) => controller.text = value!,
    validator: Validator().validateName,
    cursorColor: Colors.grey,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.perm_identity, color: Colors.grey),
      labelText: "Enter Your Name",
      labelStyle: TextStyle(color: Colors.grey),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 2.0,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 2.0,
        ),
      ),
    ),
  );
}

customEmailField(TextEditingController controller) {
  return TextFormField(
    controller: controller,
    onChanged: (value) => null,
    validator: Validator().validateEmail,
    onSaved: (value) => controller.text = value!,
    cursorColor: Colors.grey,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.email, color: Colors.grey),
      labelText: "Enter Your Email",
      labelStyle: TextStyle(color: Colors.grey),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 2.0,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 2.0,
        ),
      ),
    ),
  );
}

customButton(GlobalKey<FormState> formKey) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      child: Container(
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
              child: Text(
            "Login",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600]),
          )),
        ),
      ),
      onTap: () {
        if (formKey.currentState!.validate()) {
          SystemChannels.textInput
              .invokeMethod('TextInput.hide'); //to hide the keyboard - if any
          Get.to(() => HomeScreen());
        }
      },
    ),
  );
}

customFormField(TextEditingController controller, String labelText,
    IconData icon, bool obscureText) {
  return TextFormField(
    obscureText: obscureText,
    controller: controller,
    onChanged: (value) => null,
    cursorColor: Colors.grey,
    onSaved: (value) => controller.text = value!,
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.grey,
      ),
      labelText: labelText,
      labelStyle: TextStyle(color: Colors.grey),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 2.0,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 2.0,
        ),
      ),
    ),
  );
}
