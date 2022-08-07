import 'package:shared_preferences/shared_preferences.dart';

class CacheManager {
  static SharedPreferences? _prefs;
  static Future<SharedPreferences> get prefs async =>
      _prefs ?? await SharedPreferences.getInstance();

  // String? getMealId(String key) {
  //   return _prefs!.getString(key);
  // }

  // saveMealId(String key, String val) async {
  //   await _prefs!.setString(key, val);
  // }
}
