import 'package:get/get.dart';
import 'package:mvvm_mvc_architecture/models/login/user.dart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Userpreference {
  Future<bool> saveuser(Usermodel responsemodel) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("token", responsemodel.token.toString());
    return true;
  }

  Future<Usermodel> getuser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    Object? token = sp.get("token");
    return Usermodel(token: token.toString());
  }

  Future<bool> removeuser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    return true;
  }
}
