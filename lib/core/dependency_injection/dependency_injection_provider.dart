part of 'dependency_injection.dart';

/// This is my riverpod state provider
final weatherProvider =
StateNotifierProvider<WeatherStateNotifier,WeatherState>(
        (ref) => WeatherStateNotifier(weatherDomain: getIt())..init());