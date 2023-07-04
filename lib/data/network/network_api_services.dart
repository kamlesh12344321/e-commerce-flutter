

import 'dart:convert';
import 'dart:io';

import 'package:ecommerce_flutter_new/data/app_exception.dart';
import 'package:ecommerce_flutter_new/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class NetworkApiService extends BaseApiService {
  @override
  Future getExploreData(String url) async {
    dynamic responseJson;

    try{
      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException("No Internet Connection");
    }
    return responseJson;
  }

  @override
  Future getOtpData(String url, dynamic data) async {
    dynamic responseJson;

    try{
      Response response = await http.post(Uri.parse(url), body: data).timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException("No Internet Connection");
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch(response.statusCode){
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 400:
        throw BadRequestException(response.body.toString());

      case 404:
        throw UnAuthorisedException(response.body.toString());

        default:
          throw FetchDataException("Error accoured while communicating with server"+"With status code : ${response.statusCode}");
    }
  }



}

