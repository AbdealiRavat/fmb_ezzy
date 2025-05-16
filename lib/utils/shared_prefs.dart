import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static Prefs? _settings;
  static SharedPreferences? preferences;

  static Future<Prefs?> getInstance() async {
    if (_settings == null) {
      // keep local instance till it is fully initialized.
      final secureStorage = Prefs._();
      await secureStorage._init();
      _settings = secureStorage;
    }
    return _settings;
  }

  Prefs._();
  Future _init() async {
    preferences = await SharedPreferences.getInstance();
  }

  static bool get onBoarded => preferences?.getBool("onBoarded") ?? false;
  static set onBoarded(bool value) => preferences?.setBool("onBoarded", value);

  static bool get isUserLoggedIn => preferences?.getBool("isUserLoggedIn") ?? false;
  static set isUserLoggedIn(bool value) => preferences?.setBool("isUserLoggedIn", value);

  static List<String> get userInterests => preferences?.getStringList("userInterests") ?? [];
  static set userInterests(List<String> value) =>
      preferences?.setStringList("userInterests", value);

  static int get agoraUserId => preferences?.getInt("agoraUserId") ?? 0;
  static set videoCallsCount(int value) => preferences?.setInt("videoCallsCount", value);

  static String get user1 => preferences?.getString("user1") ?? "";
  static set user1(String value) => preferences?.setString("user1", value);

}
