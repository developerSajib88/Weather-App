import 'package:feature_first/common/widgets/components/background_card.dart';
import 'package:feature_first/features/weather/widget/weather_info.dart';
import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';

class WeatherInfoCard extends StatelessWidget {

  const WeatherInfoCard({super.key,});

  @override
  Widget build(BuildContext context) {
    return BackgroundCard(
      width: 200.w,
      height: 60.h,
      child: Row(
        mainAxisAlignment: mainSpaceAround,
        children: [

          WeatherInfo(
            iconImage: Assets.iconsPrecipitation,
            title: "Precipitation",
            value: "30%",
          ),

          WeatherInfo(
            iconImage: Assets.iconsHumadity,
            title: "Humidity",
            value: "30%",
          ),


          WeatherInfo(
            iconImage: Assets.iconsWindSpeed,
            title: "Wind Speed",
            value: "30%",
          ),



        ],
      ),
    );
  }
}
