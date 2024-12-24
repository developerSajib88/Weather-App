import 'package:feature_first/core/routes/routes_error_page.dart';
import 'package:feature_first/features/dashboard/presentation/dashboard_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AppRoutes{

  static GoRouter routes = GoRouter(
      debugLogDiagnostics: true,
      initialLocation: DashboardScreen.path,
      errorBuilder: (BuildContext context, GoRouterState state) =>
          RouteErrorPage(state: state),
      redirect: (BuildContext context, GoRouterState state){
        return null;
      },
      routes: [

        // Dashboard Screen Route And Initial route
        GoRoute(
          path: DashboardScreen.path,
          pageBuilder: (context, state) {
            return CustomTransitionPage<void>(
                key: state.pageKey,
                child: const DashboardScreen(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) =>
                    CupertinoPageTransition(primaryRouteAnimation: animation, secondaryRouteAnimation: secondaryAnimation, linearTransition: true, child: child)
            );
          },
        ),



      ]
  );
}