import 'package:intl/intl.dart';

class GlobalFunctions {

  static String formatDateTime(String? dateTime){
    return DateFormat("EEE, dd MMMM yyyy | hh:mm: a").format(DateTime.parse(dateTime?? DateTime.now().toString()));
  }

  static String formatTime(String? dateTime){
    return DateFormat("hh a").format(DateTime.parse(dateTime?? DateTime.now().toString()));
  }

}