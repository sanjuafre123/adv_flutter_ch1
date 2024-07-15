import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroProvider extends ChangeNotifier{
  bool isWelcome = false;
  late SharedPreferences sharedPreferences;

  void checkIsHome() {
    isWelcome = true;
    setPreferences(isWelcome);
    notifyListeners();
  }

  Future<void> setPreferences(bool value) async {
    sharedPreferences  = await SharedPreferences.getInstance();
    sharedPreferences.setBool('home', value);
  }

  introScreenProvider(bool isWelcome){
    isWelcome = isWelcome;
    notifyListeners();
  }
}
