import 'package:feature_first/common/widgets/components/background_card.dart';
import 'package:feature_first/core/dependency_injection/dependency_injection.dart';
import 'package:feature_first/features/weather/widget/weather_info.dart';
import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WeatherInfoCard extends HookConsumerWidget {
  const WeatherInfoCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final weatherState = ref.watch(weatherProvider);

    return BackgroundCard(
      width: 200.w,
      height: 60.h,
      child: Row(
        mainAxisAlignment: mainSpaceAround,
        children: [

          WeatherInfo(
            iconImage: Assets.iconsPrecipitation,
            title: "Precipitation",
            value: "${(weatherState.weatherModel?.current?.precipIn ?? 00).toString()}%",
          ),

          WeatherInfo(
            iconImage: Assets.iconsHumadity,
            title: "Humidity",
            value: "${(weatherState.weatherModel?.current?.humidity ?? 00).toString()}%",
          ),


          WeatherInfo(
            iconImage: Assets.iconsFeelsLike,
            title: "Feels Like",
            value: (weatherState.weatherModel?.current?.feelslikeC ?? 00).toString(),
          ),



          WeatherInfo(
            iconImage: Assets.iconsWindSpeed,
            title: "Wind Speed",
            value: "${(weatherState.weatherModel?.current?.windKph ?? 00).toString()} Km/h",
          ),


        ],
      ),
    );
  }
}
