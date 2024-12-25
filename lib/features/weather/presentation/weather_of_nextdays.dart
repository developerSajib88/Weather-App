import 'package:feature_first/common/global/functions/global_functions.dart';
import 'package:feature_first/common/widgets/components/item_views/next_days_weather_item_views.dart';
import 'package:feature_first/core/dependency_injection/dependency_injection.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WeatherOfNextDays extends HookConsumerWidget {
  const WeatherOfNextDays({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final weatherState = ref.watch(weatherProvider);

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
              itemCount: weatherState.weatherModel?.forecast?.forecastday?.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return NextDaysWeatherItemView(

                  image: "https:${weatherState.weatherModel?.forecast?.forecastday?[index].day?.condition?.icon}",

                  day: GlobalFunctions.formatWeekday(
                      weatherState.weatherModel?.forecast?.forecastday?[index].date),

                  conditionType: weatherState.weatherModel?.forecast?.forecastday?[index].day?.condition?.text ?? "Sunny",

                  minMaxTempC: "^${weatherState.weatherModel?.forecast?.forecastday?[index].day?.maxtempC ?? "23"}"
                      "/${weatherState.weatherModel?.forecast?.forecastday?[index].day?.mnumempC ?? "23"}",

                );
              }
          ),
        )


      ],
    );
  }
}
