import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
// import 'package:littleswanpreschool/Services/app_exception.dart';

import 'app_exception.dart';

class BaseClient{
  static const int TIME_OUT_DURATION = 20;

  //GET
  Future<dynamic> get(String baseUrl, String api) async {
    var uri = Uri.parse(baseUrl + api);
    try{
      var response = await http.get(uri).timeout(Duration(seconds: TIME_OUT_DURATION));
      return _processResponse(response);
    } on SocketException{
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException{
      throw ApiNotRespondingException('API not responded in time', uri.toString());
    }
  }


  //POST
  Future<dynamic> post(String baseUrl, String api, dynamic body, dynamic headers) async {
    var uri = Uri.parse(baseUrl + api);
    try{
      var response = await http.post(uri, body: jsonEncode(body), headers: headers).timeout(Duration(seconds: TIME_OUT_DURATION));
      return _processResponse(response);
    } on SocketException{
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException{
      throw ApiNotRespondingException('API not responded in time', uri.toString());
    }
  }


  //DELETE
  //OTHER

  dynamic _processResponse(http.Response response)
  {
    switch(response.statusCode){
      case 200:                               // Success
        var responseJson = utf8.decode(response.bodyBytes);
        return responseJson;
      case 201:
        var responseJson = utf8.decode(response.bodyBytes);
        return responseJson;
      case 400:                               // Bad Request
        throw BadRequestException(utf8.decode(response.bodyBytes), response.request!.url.toString());
      case 401:                               // Un Authorized
      case 403:                               // Un Authorized
        throw UnAuthorizedException(utf8.decode(response.bodyBytes), response.request!.url.toString());
      case 500:                               // Internal Server Error
      default:
        throw FetchDataException('Error occured with code : ${response.statusCode}', response.request!.url.toString());
    }
  }
}