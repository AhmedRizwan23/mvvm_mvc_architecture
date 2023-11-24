import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:mvvm_mvc_architecture/data/app_exceptions.dart';
import 'package:mvvm_mvc_architecture/data/network/base_api_service.dart';
import 'package:http/http.dart' as http;

class Networkapiservice extends Baseapiservice {
  @override
  Future<dynamic> getapi(String url) async {
    dynamic responsejson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));

      responsejson = returnresponse(response);
    } on SocketException {
      throw InternetException(internetexception: "no internet");
    } on TimeoutException {
      throw RequestTimeoutException(requestimeout: "Request time out");
    }
    print(responsejson);
    return responsejson;
  }

  @override
  Future<dynamic> postapi(dynamic data, String url) async {
    dynamic responsejson;
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));

      responsejson = returnresponse(response);
    } on SocketException {
      throw InternetException(internetexception: "no internet");
    } on TimeoutException {
      throw RequestTimeoutException(requestimeout: "Request time out");
    }
    return responsejson;
  }

  dynamic returnresponse(http.Response response) {
    print(response.body.toString());
    switch (response.statusCode) {
      case 200:
        dynamic jsonresponse = jsonDecode(response.body);
        return jsonresponse;
      case 400:
        dynamic jsonresponse = jsonDecode(response.body);
        return jsonresponse;

      default:
        throw Exception(
            "Error occur while communicaiong with server ${response.statusCode}");
    }
  }
}
