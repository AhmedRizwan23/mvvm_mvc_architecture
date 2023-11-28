import 'package:mvvm_mvc_architecture/data/network/network_api_services.dart';
import 'package:mvvm_mvc_architecture/resources/app_url/app_url.dart';

class Loginrepository {
  final apiservice = Networkapiservice();

  Future<dynamic> loginapi(dynamic data) async {
    dynamic response = await apiservice.postapi(data, Appurl.loginapi);
    return response;
  }
}
