import 'package:mvvm_mvc_architecture/data/network/network_api_services.dart';
import 'package:mvvm_mvc_architecture/models/home/user_list_model.dart';
import 'package:mvvm_mvc_architecture/resources/app_url/app_url.dart';

class Homerepository {
  final apiservice = Networkapiservice();

  Future<Userlistmodel> userlistapi() async {
    dynamic response = await apiservice.getapi( Appurl.userlistApi);
    return Userlistmodel.fromJson(response);
  }
}
