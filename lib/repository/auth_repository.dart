
import 'package:ecommerce_flutter_new/data/network/base_api_services.dart';
import 'package:ecommerce_flutter_new/data/network/network_api_services.dart';
import 'package:ecommerce_flutter_new/res/app_url.dart';

class AuthRepository {
 final BaseApiService _apiService = NetworkApiService();

  Future<dynamic> loginApi(String token, dynamic data) async {
    try {
      dynamic response = await _apiService.loginUser(AppUrls.login,token, data);
      return response;
    } catch (e){
      throw e;
    }
  }


  Future<dynamic> registrationApi(String token, dynamic data) async {
    try {
      dynamic response = await _apiService.registerUser(AppUrls.registration,token, data);
      return response;
    } catch (e){
      throw e;
    }
  }
}