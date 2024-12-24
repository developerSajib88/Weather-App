import 'package:feature_first/features/dashboard/application/dashboard_state.dart';
import 'package:feature_first/features/dashboard/domain/dashboard_domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DashboardStateNotifier extends StateNotifier<DashboardState>{
  final DashboardDomain dashboardDomain;

  DashboardStateNotifier({required this.dashboardDomain}):super(DashboardState.init());

  void init(){}

  void stateMaker(DashboardState newState)=> state = newState;

}