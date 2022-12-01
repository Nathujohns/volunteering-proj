import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:roadside_assistance/base_controller.dart';
import 'package:roadside_assistance/base_client.dart';


// import 'package:littleswanpreschool/Controller/base_controller.dart';
// import 'package:littleswanpreschool/Helper/dialog_helper.dart';
// import 'package:littleswanpreschool/Model/Login.dart';
// import 'package:littleswanpreschool/Services/base_client.dart';
// import 'package:littleswanpreschool/View/BottomBar/BottomBarIndex.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Models/login.dart';
import 'bottombar_index.dart';
import 'dialog_helper.dart';

class LoginController extends GetxController with BaseController {

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void Login() async {
    var headers = {
      'Client-Service': 'smartschool',
      "Auth-Key": "schoolAdmin@"
    };
    var body = {
      "username":usernameController.text,
      "password":passwordController.text,
      "deviceToken":"fsdfsdfdsfsdfdsfsdf"
    };
    showLoading('Loging In...');
    // var response = await BaseClient()
    //     .post('https://school.ebahrain.biz', '/api/auth/login', body, headers)
    //     .catchError(handleError);
    // if (response == null){
    //   DialogHelper.showSnackbar("User Not Found", "Invalid Username or Password", Icon(Icons.error, color: Color(0xFF54c6da)));
    //   return;
    // }
    // await saveLogin(response);
    // hideLoading();

    Get.offAll(()=> BottomBarIndex());
  }

  Future<void> saveLogin(var response) async {
    SharedPreferences shared_User = await SharedPreferences.getInstance();
    Login_model _auth = Login_model.fromJson(jsonDecode(response));
    String login = jsonEncode(_auth);
    print(login);
    shared_User.setString('login', login);
  }

  Future<void> getLogin() async {
    SharedPreferences shared_User = await SharedPreferences.getInstance();
    String? login = shared_User.getString('login');
    if(login == '')
    {
      print("User not logged out");
      return;
    }
    var user = Login_model.fromJson(jsonDecode(login!));
    print(user.id);
  }

  Future<void> LogOut() async {
    SharedPreferences shared_User = await SharedPreferences.getInstance();
    String login = '';
    print(login);
    shared_User.setString('login', login);
  }


}

// void getData() async {
//   showLoading('Fetching data');
//   var response = await BaseClient()
//       .get('https://jsonplaceholder.typicode.com', '/todos/1')
//       .catchError(handleError);
//   if (response == null) return;
//   hideLoading();
//   print(response);
// }