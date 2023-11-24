import 'dart:async';

import 'package:get/get.dart';
import 'package:mvvm_mvc_architecture/resources/routes/routes_name.dart';

class Splashservices {
  void islogin() {
    Timer(const Duration(seconds: 3), () {
      Get.toNamed(Routename.loginview);
    });
  }
}
