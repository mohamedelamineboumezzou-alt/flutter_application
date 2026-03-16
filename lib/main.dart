import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_socode/setram_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const SetramApp());
}
