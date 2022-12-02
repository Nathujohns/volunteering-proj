import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:littleswanpreschool/View/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DialogHelper {

  static void showTwoBtnDialog(){
    Get.dialog(
        AlertDialog(
          title: const Text("Log Out"),
          content: const Text("Are you Sure you want to Logout?"),
          actions: [
            TextButton(
              child: const Text("No"),
              onPressed:  () {
                Get.back();
              },
            ),
            TextButton(
              child: const Text("Yes"),
              onPressed:  () async {
                SharedPreferences shared_User = await SharedPreferences.getInstance();
                String login = '';
                shared_User.setString('login', login);
                // Get.offAll(Splash());
              },
            ),
          ],
        )
    );
  }

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
  static void showToast([String? message = 'message']) {
  }

  //show snack bar
  static void showSnackbar([String? title = 'Title', String? message = 'message', Icon? icon]) {
    Get.snackbar(
      title!,
      message!,
      icon: icon!,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.white,
    );
  }

  //show loading
  static void showLoading([String? message]) {
    Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 8),
              Text(message ?? 'Loading...'),
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