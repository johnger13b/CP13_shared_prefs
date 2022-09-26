import 'package:f_shared_prefs/domain/use_cases/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SharedPrefsController extends GetxController {
  bool themeMode = Get.isDarkMode;

  Future<String?> get storedName async => await SharedPrefsManager.storedName;

  Future<bool?> get usingDarkTheme async =>
      await SharedPrefsManager.usingDarkTheme;

  Future<void> saveName(String name) async {
    await SharedPrefsManager.saveName(name);
  }

  Future<void> saveThemeMode() async {
    await SharedPrefsManager.saveThemeMode(themeMode);
  }

  void changeThemeMode() async {
    SharedPrefsManager.changeThemeMode(themeMode ? ThemeMode.dark : ThemeMode.light);
  }
}
