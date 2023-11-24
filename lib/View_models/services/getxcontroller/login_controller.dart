import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_mvc_architecture/View_models/user_preferences/user_preference_view_model.dart';
import 'package:mvvm_mvc_architecture/models/login/user.dart.dart';
import 'package:mvvm_mvc_architecture/repsitory/login_repository/login_repository.dart';
import 'package:mvvm_mvc_architecture/resources/routes/routes_name.dart';
import 'package:mvvm_mvc_architecture/utils/utils.dart';

class Loginviewmodel extends GetxController {
  Userpreference userpreference = Userpreference();
  final api = Loginrepository();
  var emailcontroller = TextEditingController().obs;
  var passwordcontroller = TextEditingController().obs;
  var emailfocusnode = FocusNode().obs;
  var passwordfocusnode = FocusNode().obs;
  RxBool loading = false.obs;

  void loginapi() {
    loading.value = true;
    Map data = {
      "email": emailcontroller.value.text,
      "password": passwordcontroller.value.text,
    };

    api.loginapi(data).then((value) {
      loading.value = false;
      if (value["error"] == "user not found") {
        Utils.showsnack("Login", value["error"]);
      } else {
        userpreference.saveuser(Usermodel.fromJson(value)).then((value) {
          Get.toNamed(Routename.homescreen);
        });
        Utils.showsnack("Login", "Login sucessfull");
      }
    }).onError((error, stackTrace) {
      loading.value = false;
      Utils.showsnack("Error", error.toString());
    });
  }
}
