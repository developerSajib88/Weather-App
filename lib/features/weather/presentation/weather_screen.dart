import 'package:feature_first/common/global/functions/global_functions.dart';
import 'package:feature_first/common/widgets/components/background_container.dart';
import 'package:feature_first/core/dependency_injection/dependency_injection.dart';
import 'package:feature_first/features/weather/presentation/weather_info_card.dart';
import 'package:feature_first/features/weather/presentation/weather_of_nextdays.dart';
import 'package:feature_first/features/weather/presentation/weather_of_today.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class WeatherScreen extends HookConsumerWidget {

  static String get path => "/weatherScreen";
  static String get name => "weatherScreen";

  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final weatherState = ref.watch(weatherProvider);
    final weatherCtrl = ref.watch(weatherProvider.notifier);

    final searchController = useTextEditingController();

    Future<void> getWeatherData({String? query})async{
      await weatherCtrl.getWeatherData(query: query);
    }

    void showSearchInputDialog(BuildContext context) async {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Search Location"),
              content: TextField(
                controller: searchController,
                decoration: const InputDecoration(hintText: "search by city,zip"),
              ),
              actions: <Widget>[
                ElevatedButton(
                  child: const Text("Cancel"),
                  onPressed: () => Navigator.pop(context),
                ),
                ElevatedButton(
                    child: const Text("OK"),
                    onPressed: () {
                      if (searchController.text.isNotEmpty) {
                        getWeatherData(query: searchController.text);
                        Navigator.pop(context, searchController.text);
                      }
                    }),
              ],
            );
          });
    }


    return Scaffold(
      body: BackgroundContainer(
        padding: EdgeInsets.fromLTRB(6.w, 6.h, 6.w, 0),
        child: SafeArea(
          child: Skeletonizer(
            enabled: weatherState.isLoading,
            child: Column(
              children: [

                Row(
                  mainAxisAlignment: mainSpaceBetween,
                  children:[

                    InkWell(
                      onTap: ()=> showSearchInputDialog(context),
                      child: Opacity(
                        opacity: 0.30,
                        child: Container(
                          width: 20.w,
                          height: 20.w,
                          decoration: BoxDecoration(
                            color: ColorPalates.defaultWhite,
                            borderRadius: radius4
                          ),
                          child: const Icon(
                            Icons.search,
                          ),
                        ),
                      ),
                    ),


                    Text(
                      weatherState.weatherModel?.location?.name ?? "Dhaka",
                      style: CustomTextStyles.primary,
                    ),


                    InkWell(
                      onTap: ()=> getWeatherData(),
                      child: Opacity(
                        opacity: 0.30,
                        child: Container(
                          width: 20.w,
                          height: 20.w,
                          decoration: BoxDecoration(
                              color: ColorPalates.defaultWhite,
                              borderRadius: radius4
                          ),
                          child: const Icon(
                            Icons.gps_fixed,
                          ),
                        ),
                      ),
                    ),


                  ]
                ),

                Expanded(
                  child: RefreshIndicator(
                    onRefresh: ()=> getWeatherData(),
                    color: ColorPalates.primary,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          gap12,

                          Text(
                            weatherState.weatherModel?.current?.condition?.text ?? "Mostly Sunny",
                            style: CustomTextStyles.secondary,
                          ),

                          gap6,

                          Image.network(
                            "https:${weatherState.weatherModel?.current?.condition?.icon}",
                          ),


                          Row(
                            mainAxisAlignment: mainCenter,
                            crossAxisAlignment: crossStart,
                            children: [
                              Text(
                                (weatherState.weatherModel?.current?.tempC ?? 23).round().toString(),
                                style: GoogleFonts.poppins(
                                  color: ColorPalates.defaultWhite,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.w600
                                ),
                              ),

                              Text(
                                "o",
                                style: CustomTextStyles.primaryBold,
                              )

                            ],
                          ),

                          Text(
                            GlobalFunctions.formatDateTime(
                                weatherState.weatherModel?.current?.lastUpdated
                            ),
                            style: CustomTextStyles.primary,
                          ),

                          gap12,

                          const WeatherInfoCard(),

                          gap8,

                          const WeatherOfToday(),

                          gap8,

                          const WeatherOfNextDays(),

                          gap48

                        ],
                      ),
                    ),
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
