
import 'package:feature_first/common/global/functions/global_functions.dart';
import 'package:feature_first/data/local_database/get_local_database.dart';
import 'package:feature_first/data/local_database/set_local_database.dart';
import 'package:feature_first/data/model/weather/weather.dart';
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
    if(await GlobalFunctions.checkInterConnection()){
      await weatherDomain.getWeatherDate(query: query).then((weather){
        if(weather != null){
          stateMaker(state.copyWith(
              weatherModel: weather
          ));
          SetLocalDatabase().storeWeatherInLocal(weather.toRawJson());
        }else{
          setWeatherDataFromLocal();
        }
      });
    }else{
      setWeatherDataFromLocal();
      stateMaker(state.copyWith(isLoading: false));
    }
    stateMaker(state.copyWith(isLoading: false));

  }


  void setWeatherDataFromLocal() {
    String? weatherData = GetLocalDatabase().getWeatherFromLocal();
    if(weatherData != null){
      stateMaker(state.copyWith(
          weatherModel: WeatherModel.fromRawJson(weatherData)
      ));
    }
  }


}