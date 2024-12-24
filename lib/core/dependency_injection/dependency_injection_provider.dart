part of 'dependency_injection.dart';

/// This is my riverpod state provider
final authenticationProvider =
StateNotifierProvider<DashboardStateNotifier,DashboardState>(
        (ref) => DashboardStateNotifier(dashboardDomain: getIt())..init());