import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:mvvm_mvc_architecture/resources/appcolor/colors.dart';
import 'package:mvvm_mvc_architecture/resources/assets/images_assets.dart';

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

  static showsnack(String message, title) {
    Get.snackbar(title, message, snackPosition: SnackPosition.BOTTOM);
  }

  static imagesnackbar() {
    Get.dialog(GestureDetector(
      onTap: () {
        Get.back();
      },
      child: SizedBox(
          height: 200, width: 200, child: Image.asset(Imageassets.spidey)),
    ));
  }
}
