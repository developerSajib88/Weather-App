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

  void userIsLogin(bool value) =>
      storingData(KeyLocalDatabase.userIsLogIn, value);

  void userRegister(bool value) =>
      storingData(KeyLocalDatabase.userRegister, value);

  void userType(String value) => storingData(KeyLocalDatabase.userType, value);

  void userId(int value) => storingData(KeyLocalDatabase.userId, value);

  void userName(String value) => storingData(KeyLocalDatabase.userName, value);

  void userEmail(String value) =>
      storingData(KeyLocalDatabase.userEmail, value);

  void userPhone(String value) =>
      storingData(KeyLocalDatabase.userPhone, value);

  void userAccessToken(String value) =>
      storingData(KeyLocalDatabase.userAccessToken, value);

  void userRefreshToken(String value) =>
      storingData(KeyLocalDatabase.userRefreshToken, value);

  cleanBox() => database.clear();

}