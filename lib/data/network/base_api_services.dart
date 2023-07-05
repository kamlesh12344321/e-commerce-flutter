

abstract class BaseApiService {
  Future<dynamic> getExploreData(String url, String token);
  Future<dynamic> getOtpData(String url, String token,dynamic data);
  Future<dynamic> loginUser(String url,String token, dynamic data);
  Future<dynamic> registerUser(String url,String token, dynamic data);

}