import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:mvvm_mvc_architecture/resources/appcolor/colors.dart';

class Utils {
  static void fieldfocuschange(
      BuildContext context, FocusNode current, FocusNode nextfocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextfocus);
  }

  static toastmessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        gravity: ToastGravity.CENTER,
        backgroundColor: Appcolor.blackcolor);
  }

  static snackbar(String title, String message) {
    Get.snackbar(title, message);
  }
}
