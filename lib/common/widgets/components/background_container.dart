import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundContainer extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  const BackgroundContainer({
    super.key,
    this.padding,
    this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 1.sh,
      clipBehavior: Clip.antiAlias,
      padding: padding,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF352163), Color(0xFF331972), Color(0xFF33143C)],
        ),
      ),
      child: child,
    );
  }
}