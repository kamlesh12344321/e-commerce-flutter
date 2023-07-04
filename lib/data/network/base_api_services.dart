

abstract class BaseApiService {
  Future<dynamic> getExploreData(String url);
  Future<dynamic> getOtpData(String url, dynamic data);
}