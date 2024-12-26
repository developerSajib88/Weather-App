import 'package:feature_first/data/api/api_methods/api_methods.dart';
import 'package:feature_first/data/api/api_urls/api_urls.dart';
import 'package:feature_first/data/model/weather/weather.dart';

class ApiServices {

  // Fetch Weather Data
  static Future<WeatherModel?> getWeatherData({String? query})async{
    Map<String,dynamic>? response = await ApiMethod.get("${ApiUrls.forecastUri}q=${query ?? "auto:ip"}&days=3&aqi=no&alerts=no");
    if(response != null){
      return WeatherModel.fromJson(response);
    }else{
      return null;
    }
  }

}