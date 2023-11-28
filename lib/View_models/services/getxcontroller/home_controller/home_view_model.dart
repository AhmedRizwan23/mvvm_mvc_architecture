import 'package:get/get.dart';
import 'package:mvvm_mvc_architecture/models/home/user_list_model.dart';
import 'package:mvvm_mvc_architecture/repsitory/home_repository/home_repository.dart';
import 'package:mvvm_mvc_architecture/response/status.dart';

class Homeviewmodel extends GetxController {
  final _api = Homerepository();

  final rxrequeststatus = Status.LOADING.obs;
  final userlist = Userlistmodel().obs;
  RxString error = "".obs;

  void setrxrequeststatus(Status value) {
    rxrequeststatus.value = value;
  }

  void setuserlist(Userlistmodel value) {
    userlist.value = value;
  }

  void seterror(String value) {
    error.value = value;
  }

  void userlistapi() {
    _api.userlistapi().then((value) {
      setrxrequeststatus(Status.COMPLETED);
      setuserlist(value);
    }).onError((error, stackTrace) {
      seterror(error.toString());
      setrxrequeststatus(Status.ERROR);
    });
  }
}
