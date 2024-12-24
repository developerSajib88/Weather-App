import 'package:feature_first/app/app.dart';
import 'package:feature_first/utils/styles/color_palates.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:feature_first/core/dependency_injection/dependency_injection.dart' as di;

import 'data/local_database/key_local_database.dart';

void main()async{

  WidgetsFlutterBinding.ensureInitialized();

  di.init();
  await Hive.initFlutter();
  await Hive.openBox(KeyLocalDatabase.databaseName);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorPalates.statusBarColor,
      statusBarIconBrightness: Brightness.light));

  runApp(
      const ProviderScope(
          child: WeatherApp()
      )
  );
}