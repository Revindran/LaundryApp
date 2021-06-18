import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:laundryapp/services/network_exceptions.dart';

class BaseNetworkClient {
  static const int timeout = 20;
  static var baseurl = 'https://jsonplaceholder.typicode.com';

  //GET
  Future<dynamic> get(String endPoint) async {
    var uri = Uri.parse(baseurl + endPoint);
    try {
      var respond = await http.get(uri).timeout(Duration(seconds: timeout));
      return _processResponse(respond);
    } on SocketException {
      throw FetchDataException('No Internet', uri.toString());
    } on TimeoutException {
      throw ApiNotFoundException('Api not respond in Time', uri.toString());
    }
  }

  //POST
  Future<dynamic> post(String endPoint,dynamic payloadObj) async {
    var uri = Uri.parse(baseurl + endPoint);
    var payload = json.decode(payloadObj);
    try {
      var respond = await http.post(uri,body: payload).timeout(Duration(seconds: timeout));
      return _processResponse(respond);
    } on SocketException {
      throw FetchDataException('No Internet', uri.toString());
    } on TimeoutException {
      throw ApiNotFoundException('Api not respond in Time', uri.toString());
    }
  }

}

dynamic _processResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      var responseJson = utf8.decode(response.bodyBytes);
      return responseJson;
      break;
    case 400:
      throw BadRequestException(
          utf8.decode(response.bodyBytes), response.request!.url.toString());
    case 401:
    case 403:
      throw UnAuthorizedException(
          utf8.decode(response.bodyBytes), response.request!.url.toString());
    case 500:
    default:
      throw FetchDataException('Error accured with ${response.statusCode}',
          response.request!.url.toString());
  }
}
