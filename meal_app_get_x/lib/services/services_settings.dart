import 'package:get/get.dart';
import 'package:meal_app_get_x/storage/cache_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheService extends GetxService {
  late SharedPreferences pref;
  Future<CacheService> init() async {
    pref = await CacheManager.prefs;
    // pref.clear();
    return this;
  }
}
