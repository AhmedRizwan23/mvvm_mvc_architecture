import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
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

  static snackbar() {
    Get.dialog(GestureDetector(
      onTap: () {
        Get.back();
      },
      child: SizedBox(
          height: 200, width: 200, child: Image.asset(Imageassets.spidey)),
    ));
  }
}
