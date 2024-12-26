import 'package:feature_first/data/custom_log.dart';
import 'package:feature_first/data/local_database/key_local_database.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SetLocalDatabase{

  final database = Hive.box(KeyLocalDatabase.databaseName);

  storingData(String key, dynamic v) {
    try {
      database.put(key, v);
    } catch (e, err) {
      CustomLog.errorPrint("Got an error ==> $e");
      CustomLog.errorPrint('Error stack => $err');
    }
  }

  void storeWeatherInLocal(String value) =>
      storingData(KeyLocalDatabase.weatherData, value);

  cleanBox() => database.clear();

}