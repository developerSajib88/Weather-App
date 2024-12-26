import 'package:feature_first/features/weather/application/weather_state.dart';
import 'package:feature_first/features/weather/application/weather_state_notifier.dart';
import 'package:feature_first/features/weather/domain/weather_domain.dart';
import 'package:feature_first/features/weather/infrastructure/weather_dom_i.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'dependency_injection_provider.dart';

final getIt = GetIt.instance;

void init() {

  getIt.registerLazySingleton<WeatherDomain>(()=> WeatherDomainI());

}