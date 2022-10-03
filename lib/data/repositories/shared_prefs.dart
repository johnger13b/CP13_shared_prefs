import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsRepo {
  Future<T?> retrieveData<T>(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dynamic value;
    switch (T) {
      case bool:
        value = prefs.getBool(key);
        // TO DO: Obten un valor booleano usando el key.
        break;
      case double:
        value = prefs.getDouble(key);
        // TO DO: Obten un valor decimal usando el key.
        break;
      case int:
        value = prefs.getInt(key);
        // TO DO: Obten un valor entero usando el key.
        break;
      case String:
        value = prefs.getString(key);
        // TO DO: Obten un string usando el key.
        break;
      case List:
        value = prefs.getStringList(key);
        // TO DO: Obten una lista de strings usando el key.
        break;
    }
    return value as T?;
  }

  Future<void> storeData<T>(String key, T value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    switch (T) {
      case bool:
        // TO DO: Guarda value como booleano usando el key.
        prefs.setBool(key, value as bool);
        break;
      case double:
        // TO DO: Guarda value como decimal usando el key.
        prefs.setDouble(key, value as double);
        break;
      case int:
        // TO DO: Guarda value como entero usando el key.
        prefs.setInt(key, value as int);
        break;
      case String:
        // TO DO: Guarda value como string usando el key.
        prefs.setString(key, value as String);
        break;
      case List:
        // TO DO: Guarda value como una lista de strings usando el key.
        prefs.setStringList(key, value as List<String>);
        break;
    }
  }
}
