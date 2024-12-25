import 'package:feature_first/app/app.dart';
import 'package:feature_first/common/widgets/components/item_views/today_weather_item_view.dart';
import 'package:feature_first/utils/constants/ui_constants.dart';
import 'package:feature_first/utils/styles/color_palates.dart';
import 'package:feature_first/utils/styles/custom_text_styles.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';

class WeatherOfToday extends StatelessWidget {
  const WeatherOfToday({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        Text(
          "Today",
          style: CustomTextStyles.primaryBold
        ),

        gap6,

        SizedBox(
          width: 1.sw,
          height: 70.h,
          child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return TodayWeatherItemView();
              }
          ),
        )


      ],
    );
  }
}
