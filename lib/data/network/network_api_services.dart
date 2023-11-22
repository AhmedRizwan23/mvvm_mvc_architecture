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
    return responsejson;
  }

  @override
  Future<dynamic> postapi(dynamic data, String url) async {
    dynamic responsejson;
    try {
      final response = await http
          .post(Uri.parse(url), body: jsonEncode(data))
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
    switch (response.statusCode) {
      case 200:
        dynamic jsonresponse = jsonDecode(response.body);
        return jsonresponse;
      case 400:
        throw const HttpException("invalid url");
      default:
        throw HttpException(
            "exception occur status code is ${response.statusCode}");
    }
  }
}
