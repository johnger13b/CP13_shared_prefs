import 'package:f_shared_prefs/ui/app.dart';
import 'package:f_shared_prefs/ui/controllers/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(SharedPrefsController());
  runApp(const SharedPrefsApp());
}
