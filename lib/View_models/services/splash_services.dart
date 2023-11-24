import 'dart:async';

import 'package:get/get.dart';
import 'package:mvvm_mvc_architecture/View_models/user_preferences/user_preference_view_model.dart';
import 'package:mvvm_mvc_architecture/resources/routes/routes_name.dart';

class Splashservices {
  void islogin() {
    Userpreference().getuser().then((value) {
      print(value.token);
      if (value.token == null) {
        Get.toNamed(Routename.loginview);
      } else {
        Get.toNamed(Routename.homescreen);
      }
    });
  }
}
