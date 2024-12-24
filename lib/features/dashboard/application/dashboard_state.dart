import 'package:equatable/equatable.dart';
import 'package:feature_first/data/model/weather/weather.dart';

class DashboardState extends Equatable{

  final bool isLoading;
  final WeatherModel? weatherModel;

  const DashboardState({
    required this.isLoading,
    required this.weatherModel,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    isLoading
  ];

  factory DashboardState.init()=> const DashboardState(
      isLoading: false,
      weatherModel: null
  );

  DashboardState copyWith({
    bool? isLoading,
    WeatherModel? weatherModel
  })=>DashboardState(
      isLoading: isLoading ?? this.isLoading,
      weatherModel: weatherModel ?? this.weatherModel
  );


}