import 'package:abctechfront/injection.dart';
import 'package:abctechfront/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wakelock/wakelock.dart';

const bool inProduction = bool.fromEnvironment("dart.vm.product");

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await configureDependencies();
  Wakelock.enable();
  runApp(AppWidget());
}
