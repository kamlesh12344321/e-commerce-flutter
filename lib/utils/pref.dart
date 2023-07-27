import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefUtil{

  static final SharedPrefUtil _instance = SharedPrefUtil._internal();

  factory SharedPrefUtil() => _instance;

  SharedPrefUtil._internal();

  SharedPreferences? _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<void> saveString(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  String getString(String key, {String defaultValue = ''}) {
    return _prefs?.getString(key) ?? defaultValue;
  }

  Future<void> isLoggedIn(String key, bool value)  async {
    await _prefs?.setBool(key, value);
  }

  bool getIsLoggedIn(String key, {bool defaultValue = false}) {
    return _prefs?.getBool(key) ?? defaultValue;
  }
}