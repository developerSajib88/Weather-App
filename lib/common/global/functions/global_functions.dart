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

}