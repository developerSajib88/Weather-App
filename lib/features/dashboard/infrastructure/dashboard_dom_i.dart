import 'package:feature_first/data/api/api_services/api_services.dart';
import 'package:feature_first/data/model/weather/weather.dart';
import 'package:feature_first/features/dashboard/domain/dashboard_domain.dart';

class DashboardDomainI implements DashboardDomain{

  @override
  Future<WeatherModel?> getWeatherDate({String? query}) async =>
      await ApiServices.getWeatherData(query: query);

}