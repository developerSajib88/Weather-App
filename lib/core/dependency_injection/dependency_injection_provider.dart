part of 'dependency_injection.dart';

/// This is my riverpod state provider
final authenticationProvider =
StateNotifierProvider<WeatherStateNotifier,WeatherState>(
        (ref) => WeatherStateNotifier(weatherDomain: getIt())..init());