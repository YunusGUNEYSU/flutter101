import 'package:flutter101/202/cache/shared_not_initalize.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum SharedKeys{
  counter
}
class SharedManager {
  SharedPreferences? preferens;
  SharedManager() {
    init();
  }
  void _checkPrefens() {
    if (preferens == null) {
      throw SharedNotInitiazle();
    }
  }

  Future<void> init() async {
    _checkPrefens();
    preferens = await SharedPreferences.getInstance();
  }

  Future<void> saveString(SharedKeys key, String value) async {
    _checkPrefens();
    await preferens?.setString(key.name, value);
  }

  String? getString(SharedKeys key) {
    _checkPrefens();

    return preferens?.getString(key.name);
  }

  Future<bool> removeItem(SharedKeys key) async {
    _checkPrefens();
    return (await preferens?.remove(key.name)) ?? false;
  }
}
