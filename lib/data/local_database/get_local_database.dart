import 'package:feature_first/data/local_database/key_local_database.dart';
import 'package:hive_flutter/hive_flutter.dart';


class GetLocalDatabase {

  final database = Hive.box(KeyLocalDatabase.databaseName);

  String? getWeatherFromLocal() => database.get(KeyLocalDatabase.weatherData);

}