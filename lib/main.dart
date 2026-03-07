import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_socode/setram_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const SetramApp());
}
