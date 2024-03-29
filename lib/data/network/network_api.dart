import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:pmt/data/network/base_api.dart';

class NetWorkApiServices extends BaseApiServices {
  dynamic responseJson;

  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      print(url);
    }
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      // throw InternetException('');
    } on TimeoutException {
      // throw RequestTimeOut('');
    }
    return responseJson;
  }

  @override
  Future<dynamic> postApi(var data, String url) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }
    try {
      final response = await http
          .post(
            Uri.parse(url),
            body: data,
          )
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      // throw InternetException('');
    } on TimeoutException {
      // throw RequestTimeOut('');
    }
    //print(responseJson);
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case >= 400:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      default:
      //throw FetchDataException//(
      //  "Error while communication with server ${response.statusCode}");
    }
  }
//     return responseJson;
//   }
}

class FetchDataException {}
