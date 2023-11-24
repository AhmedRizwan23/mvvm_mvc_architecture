import 'package:get/get.dart';
import 'package:mvvm_mvc_architecture/resources/routes/routes_name.dart';
import 'package:mvvm_mvc_architecture/view/home/homescreen.dart';
import 'package:mvvm_mvc_architecture/view/login/login_view.dart';
import 'package:mvvm_mvc_architecture/view/splashscreen.dart';

class Approutes {
  static approutes() {
    return [
      GetPage(name: Routename.splashscreen, page: () => const Splashscreen()),
      GetPage(name: Routename.loginview, page: () => const Loginview()),
      GetPage(name: Routename.homescreen, page: () => const Homescreen()),
    ];
  }
}
