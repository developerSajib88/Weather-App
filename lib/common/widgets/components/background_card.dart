import 'package:feature_first/utils/constants/ui_constants.dart';
import 'package:flutter/material.dart';

class BackgroundCard extends StatelessWidget {

  final double? width;
  final double? height;
  final Widget? child;

  const BackgroundCard({
    super.key,
    this.width,
    this.height,
    this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: radius4,
        gradient: const LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF947CCD), Color(0xFF523D7F)],
        ),
      ),
      child: child,
    );
  }
}
