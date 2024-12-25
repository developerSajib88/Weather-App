import 'package:feature_first/common/widgets/components/item_views/next_days_weather_item_views.dart';
import 'package:feature_first/common/widgets/components/item_views/today_weather_item_view.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';

class WeatherOfNextDays extends StatelessWidget {
  const WeatherOfNextDays({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        Text(
            "Next 3 Day's",
            style: CustomTextStyles.primaryBold
        ),

        gap6,

        SizedBox(
          width: 1.sw,
          height: 40.h,
          child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return NextDaysWeatherItemView();
              }
          ),
        )


      ],
    );
  }
}
