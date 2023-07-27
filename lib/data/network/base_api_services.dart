

abstract class BaseApiService {
  Future<dynamic> getOtpData(String url, String token,dynamic data);
  Future<dynamic> loginUser(String url,String token, dynamic data);
  Future<dynamic> registerUser(String url,String token, dynamic data);
  Future<dynamic> homeExplore(String url, String token);

}