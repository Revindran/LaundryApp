import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class DialogHelper {
  //show error dialog
  static void showErrorDialog(
      {String title = 'Error', String description = 'Something went wrong'}) {
    Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: Get.textTheme.headline4,
              ),
              Text(
                description,
                style: Get.textTheme.headline6,
              ),
              ElevatedButton(
                onPressed: () {
                  if (Get.isDialogOpen!) Get.back();
                },
                child: Text('Okay'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //show toast

  //show snack bar

  //show loading

  static void showLoading([String? message]) {
    Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset('assets/loading.json'),
              SizedBox(height: 8),
              Text(message ?? 'Loading...',style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }

  //hide loading
  static void hideLoading() {
    if (Get.isDialogOpen!) Get.back();
  }
}
