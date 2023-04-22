import 'package:shared_preferences/shared_preferences.dart';

const key = "intro";

setIntroPreferences() async {
  final prefes = await SharedPreferences.getInstance();
  return prefes.setBool(key, true);
}

getIntroPreferences() async {
  final prefes = await SharedPreferences.getInstance();
  final result = prefes.getBool(key) ?? false;
  return result;
}
