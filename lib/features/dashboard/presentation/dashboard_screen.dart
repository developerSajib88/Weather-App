import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DashboardScreen extends HookConsumerWidget {

  static String get path => "/dashboardScreen";
  static String get name => "dashboardScreen";

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
      ),
    );
  }
}
