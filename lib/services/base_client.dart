import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:laundryapp/constants/constants.dart';

import 'app_exceptions.dart';
import 'helper/process_response.dart';

class BaseClient {
  //GET
  Future<dynamic> get(String endPoint) async {
    await Future.delayed(Duration(seconds: 3));
    var baseUrl = Constants.baseUrl;
    var header = Constants.header;
    var uri = Uri.parse(baseUrl + endPoint);
    try {
      var response = await http
          .get(uri, headers: header)
          .timeout(Duration(seconds: Constants.TIME_OUT_DURATION));
      return processResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          'API not responded in time', uri.toString());
    }
  }

  //POST
  Future<dynamic> post(String endPoint, dynamic payloadObj) async {
    await Future.delayed(Duration(seconds: 3));
    var baseUrl = Constants.baseUrl;
    var header = Constants.header;
    var uri = Uri.parse(baseUrl + endPoint);
    var payload = json.encode(payloadObj);
    try {
      var response = await http
          .post(uri, headers: header, body: payload)
          .timeout(Duration(seconds: Constants.TIME_OUT_DURATION));
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          'API not responded in time', uri.toString());
    }
  }

  dynamic _processResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = utf8.decode(response.bodyBytes);
        return responseJson;
        break;
      case 201:
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
        throw FetchDataException(
            'Error occured with code : ${response.statusCode}',
            response.request!.url.toString());
    }
  }

//DELETE
//OTHER

}
