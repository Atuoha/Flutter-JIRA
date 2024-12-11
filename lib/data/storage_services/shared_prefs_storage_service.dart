import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsStorageService {
  late final SharedPreferences _prefs;

  Future<SharedPrefsStorageService> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }

  // get bool value
  bool getBoolValue(String key) {
    return _prefs.getBool(key) ?? false;
  }

  // get String value
  String getStringValue(String key) {
    return _prefs.getString(key) ?? "";
  }

  // get String list value
  List<String> getStringListValue(String key) {
    return _prefs.getStringList(key) ?? [];
  }

  // set String value
  Future<void> setStringValue(String key, String value) async {
    await _prefs.setString(key, value);
  }

  // set String list value
  Future<void> setStringList(String key, List<String> value) async {
    await _prefs.setStringList(key, value);
  }

  // remove key
  Future<void> removeKey(String key) async {
    await _prefs.remove(key);
  }

  // set bool value
  Future<void> setBoolValue(String key, bool value) async {
    await _prefs.setBool(key, value);
  }
}
