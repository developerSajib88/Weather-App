import 'package:feature_first/data/model/weather/weather.dart';

abstract class WeatherDomain {
  Future<WeatherModel?> getWeatherDate({String? query});
}