import 'package:feature_first/features/weather/application/weather_state.dart';
import 'package:feature_first/features/weather/domain/weather_domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WeatherStateNotifier extends StateNotifier<WeatherState>{
  final WeatherDomain weatherDomain;

  WeatherStateNotifier({required this.weatherDomain}):super(WeatherState.init());

  void init(){
    getWeatherData();
  }

  void stateMaker(WeatherState newState)=> state = newState;

  Future<void> getWeatherData({String? query}) async {
    stateMaker(state.copyWith(isLoading: true));
    await weatherDomain.getWeatherDate(query: query).then((weather){
      if(weather != null){
        stateMaker(state.copyWith(
          weatherModel: weather
        ));
      }
    });
    stateMaker(state.copyWith(isLoading: false));
  }

}