import 'package:feature_first/common/global/functions/global_functions.dart';
import 'package:feature_first/common/widgets/components/item_views/today_weather_item_view.dart';
import 'package:feature_first/core/dependency_injection/dependency_injection.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WeatherOfToday extends HookConsumerWidget {
  const WeatherOfToday({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final weatherState = ref.watch(weatherProvider);

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
              itemCount: weatherState.weatherModel?.forecast?.forecastday?.first.hour?.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return TodayWeatherItemView(
                  time: GlobalFunctions.formatTime(weatherState.weatherModel?.forecast?.forecastday?.first.hour?[index].time),
                  image: "https:${weatherState.weatherModel?.forecast?.forecastday?.first.hour?[index].condition?.icon}",
                  value: (weatherState.weatherModel?.forecast?.forecastday?.first.hour?[index].tempC ?? 23).toString(),
                );
              }
          ),
        )


      ],
    );
  }
}
