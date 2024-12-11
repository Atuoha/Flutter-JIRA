import 'package:flutter/material.dart';
import 'package:todo/presentation/app_widget.dart';

import 'core/global_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GlobalConfig.initConfig();
  runApp(const AppWidget());
}
