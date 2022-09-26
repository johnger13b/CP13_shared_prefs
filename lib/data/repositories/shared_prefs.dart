import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsRepo {
  Future<T?> retrieveData<T>(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dynamic value;
    switch (T) {
      case bool:
        value = // TODO: Obten un valor booleano usando el key.
        break;
      case double:
        value = // TODO: Obten un valor decimal usando el key.
        break;
      case int:
        value = // TODO: Obten un valor entero usando el key.
        break;
      case String:
        value = // TODO: Obten un string usando el key.
        break;
      case List:
        value = // TODO: Obten una lista de strings usando el key.
        break;
    }
    return value as T?;
  }

  Future<void> storeData<T>(String key, T value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    switch (T) {
      case bool:
        // TODO: Guarda value como booleano usando el key.
        break;
      case double:
        // TODO: Guarda value como decimal usando el key.
        break;
      case int:
        // TODO: Guarda value como entero usando el key.
        break;
      case String:
        // TODO: Guarda value como string usando el key.
        break;
      case List:
        // TODO: Guarda value como una lista de strings usando el key.
        break;
    }
  }
}
