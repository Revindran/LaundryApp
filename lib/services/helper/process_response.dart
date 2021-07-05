
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../app_exceptions.dart';

dynamic processResponse(http.Response response) {
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