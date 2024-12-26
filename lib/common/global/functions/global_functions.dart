import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:intl/intl.dart';

class GlobalFunctions {


  static Future<bool> checkInterConnection()async{
    bool result = await InternetConnectionChecker().hasConnection;
    return result;
  }

  static String formatDateTime(String? dateTime){
    return DateFormat("EEE, dd MMMM yyyy | hh:mm: a").format(DateTime.parse(dateTime?? DateTime.now().toString()));
  }

  static String formatTime(String? dateTime){
    return DateFormat("hh a").format(DateTime.parse(dateTime?? DateTime.now().toString()));
  }

  static String formatWeekday(DateTime? dateTime){
    return DateFormat("EEEE").format(dateTime?? DateTime.now());
  }

  static String unitConverter({required String input, required String conversionType}){
    double result = 0.00;
    double value = double.tryParse(input) ?? 0.0;
    if (conversionType == "CelsiusToFahrenheit") {
      result = ((value * 9 / 5) + 32);
    } else {
      result = ((value - 32) * 5 / 9);
    }
    return result.toStringAsFixed(2);
  }


}