import 'package:mvvm_mvc_architecture/response/status.dart';

class Apiresponse<T> {
  Status? status;
  T? data;
  String? message;

  Apiresponse({this.data, this.message, this.status});
  Apiresponse.loading() : status = Status.LOADING;
  Apiresponse.completed(this.data) : status = Status.COMPLETED;
  Apiresponse.error(this.message) : status = Status.ERROR;

  @override
  String toString() {
    return "Status :$status, message:$message, data:$data";
  }
}
