
import 'dart:convert';
import 'package:ecommerce_flutter_new/data/network/base_api_services.dart';
import 'package:ecommerce_flutter_new/data/network/network_api_services.dart';
import 'package:ecommerce_flutter_new/model/home/ExploreHome.dart';
import 'package:ecommerce_flutter_new/res/app_url.dart';

class ExploreRepository {
  final BaseApiService _apiService = NetworkApiService();

  Future<ExploreHome> homeExploreApi(String token) async {
    try {
      dynamic response =  await _apiService.homeExplore(AppUrls.homeExplore, token);
      return ExploreHome.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}