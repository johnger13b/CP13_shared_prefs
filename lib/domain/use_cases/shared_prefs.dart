import 'package:f_shared_prefs/data/repositories/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SharedPrefsManager {
  static final SharedPrefsRepo _repository = SharedPrefsRepo();

  static Future<String?> get storedName => /* TODO: retorna la preferencia de tipo [String] con llave [f_sp_name] */;

  static Future<bool?> get usingDarkTheme => /* TODO: retorna la preferencia de tipo [bool] con llave [f_sp_dark_theme] */;

  static Future<void> saveName(String name) async {
    /* TODO: almacena la preferencia de tipo [String] con llave [f_sp_name] */;
  }

  static Future<void> saveThemeMode(bool usingDarkMode) async {
    /* TODO: almacena la preferencia de tipo [bool] con llave [f_sp_dark_theme] */;
  }

  static void changeThemeMode(ThemeMode mode) {
    Get.changeThemeMode(mode);
  }
}
