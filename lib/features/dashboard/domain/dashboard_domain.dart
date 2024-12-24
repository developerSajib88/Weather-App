import 'package:feature_first/data/model/weather/weather.dart';

abstract class DashboardDomain {
  Future<WeatherModel?> getWeatherDate({String? query});
}