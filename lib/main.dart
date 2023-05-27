import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dependency.dart' as di;
import 'app_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const AppPage());
  });
  // runApp(const AppPage());
}
