import 'package:f_shared_prefs/ui/pages/shared_prefs_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SharedPrefsApp extends StatelessWidget {
  const SharedPrefsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shared Preferences',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Agrega el darkTheme por defecto.
      // Establece themeMode en modo sistema.
      home: const SharedPrefsPage(),
    );
  }
}
