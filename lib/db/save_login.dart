import 'package:shared_preferences/shared_preferences.dart';

class SaveLogin {

  Future<void> saveLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('login', true);
  }

  Future<void> logout() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('login', false);
  }

  Future<bool> checkLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('login') ?? false;
  }
}
