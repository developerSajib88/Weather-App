import 'package:feature_first/app/app.dart';
import 'package:feature_first/utils/constants/ui_constants.dart';
import 'package:feature_first/utils/styles/custom_text_styles.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';

class WeatherInfo extends StatelessWidget {

  final String iconImage;
  final String title;
  final String value;

  const WeatherInfo({
    super.key,
    required this.iconImage,
    required this.title,
    required this.value
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossCenter,
      mainAxisAlignment: mainCenter,
      children: [


        Image.asset(
          iconImage,
          width: 15.w,
          height: 15.w,
        ),

        gap4,

        Text(
          value,
          style: CustomTextStyles.secondary,
        ),

        gap4,

        Text(
          title,
          style: CustomTextStyles.secondary,
        )
        
      ],
    );
  }
}
