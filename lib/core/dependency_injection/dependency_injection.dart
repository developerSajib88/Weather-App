import 'package:feature_first/features/dashboard/application/dashboard_state.dart';
import 'package:feature_first/features/dashboard/application/dashboard_state_notifier.dart';
import 'package:feature_first/features/dashboard/domain/dashboard_domain.dart';
import 'package:feature_first/features/dashboard/infrastructure/dashboard_dom_i.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'dependency_injection_provider.dart';

final getIt = GetIt.instance;

void init() {

  getIt.registerLazySingleton<DashboardDomain>(()=> DashboardDomainI());

}