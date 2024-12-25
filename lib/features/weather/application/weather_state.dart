import 'package:equatable/equatable.dart';
import 'package:feature_first/data/model/weather/weather.dart';

class WeatherState extends Equatable{

  final bool isLoading;
  final WeatherModel? weatherModel;

  const WeatherState({
    required this.isLoading,
    required this.weatherModel,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    isLoading
  ];

  factory WeatherState.init()=> const WeatherState(
      isLoading: false,
      weatherModel: null
  );

  WeatherState copyWith({
    bool? isLoading,
    WeatherModel? weatherModel
  })=>WeatherState(
      isLoading: isLoading ?? this.isLoading,
      weatherModel: weatherModel ?? this.weatherModel
  );


}