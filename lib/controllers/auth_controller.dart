import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:laundryapp/model/login_response.dart';
import 'package:laundryapp/model/register_model.dart';
import 'package:laundryapp/services/base_client.dart';
import 'package:laundryapp/services/controller/base_controller.dart';
import 'package:laundryapp/view/bottom_bar.dart';

class AuthController extends GetxController with BaseController {
  void apiLogin(TextEditingController email, TextEditingController pass) async {
    LoginResponse loginResponseFull;
    Map body = {'email': email.text, 'password': pass.text};
    showLoading('Login Please Wait...');

    var response =
        await BaseClient().post('/login', body).catchError(handleError);
    if (response != null) {
      final data = jsonDecode(response);
      final loginResponseFromJson = LoginResponse.fromJson(data);
      loginResponseFull = loginResponseFromJson;
      if (loginResponseFull.success!) {
        hideLoading();
        Get.to(() => BottomBarHome());
        Get.snackbar("Success", "Login Success",
            snackPosition: SnackPosition.BOTTOM);
      } else if (loginResponseFull.error != null) {
        hideLoading();
        Get.snackbar("Error", loginResponseFull.error!,
            snackPosition: SnackPosition.BOTTOM);
      }
    } else {
      hideLoading();
      print("Error");
      Get.snackbar("Error", "Please Try Again!",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void apiRegister(
      TextEditingController email,
      TextEditingController name,
      TextEditingController pass,
      TextEditingController cPass,
      TextEditingController phone) async {
    RegisterResponse registerResponse;
    Map body = {
      'email': email.text,
      'password': pass.text,
      'name': name,
      'code': '1',
      'phone': phone,
      'confirm_password': cPass
    };
    showLoading('Registering Please Wait...');

    var response =
        await BaseClient().post('/login', body).catchError(handleError);
    if (response != null) {
      final data = jsonDecode(response);
      final loginResponseFromJson = RegisterResponse.fromJson(data);
      registerResponse = loginResponseFromJson;
      if (registerResponse.success!) {
        hideLoading();
        Get.to(() => BottomBarHome());
        Get.snackbar("Success", "Registering Success",
            snackPosition: SnackPosition.BOTTOM);
      } else {
        hideLoading();
        Get.snackbar("Error", "Error", snackPosition: SnackPosition.BOTTOM);
      }
    } else {
      hideLoading();
      print("Error");
      Get.snackbar("Error", "Please Try Again!",
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
