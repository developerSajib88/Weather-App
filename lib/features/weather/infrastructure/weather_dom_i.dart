import 'package:feature_first/data/api/api_services/api_services.dart';
import 'package:feature_first/data/model/weather/weather.dart';
import 'package:feature_first/features/weather/domain/weather_domain.dart';

class WeatherDomainI implements WeatherDomain{

  @override
  Future<WeatherModel?> getWeatherDate({String? query}) async =>
      await ApiServices.getWeatherData(query: query);

}