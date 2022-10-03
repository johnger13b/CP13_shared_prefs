import 'package:f_shared_prefs/data/repositories/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SharedPrefsManager {
  static final SharedPrefsRepo _repository = SharedPrefsRepo();

/* TO DO: retorna la preferencia de tipo [String] con llave [f_sp_name] */
  static Future<String?> get storedName =>
      _repository.retrieveData<String>("f_sp_name");

/* TO DO: retorna la preferencia de tipo [bool] con llave [f_sp_dark_theme] */
  static Future<bool?> get usingDarkTheme =>
      _repository.retrieveData<bool>("f_sp_dark_theme");

/* TO DO: almacena la preferencia de tipo [String] con llave [f_sp_name] */
  static Future<void> saveName(String name) async {
    await _repository.storeData<String>("f_sp_name", name);
  }

/* TO DO: almacena la preferencia de tipo [bool] con llave [f_sp_dark_theme] */
  static Future<void> saveThemeMode(bool usingDarkMode) async {
    await _repository.storeData<bool>("f_sp_dark_theme", usingDarkMode);
  }

  static void changeThemeMode(ThemeMode mode) {
    Get.changeThemeMode(mode);
  }
}
