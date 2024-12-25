import 'package:feature_first/common/widgets/components/background_container.dart';
import 'package:feature_first/features/dashboard/presentation/weather_info_card.dart';
import 'package:feature_first/features/dashboard/presentation/weather_of_nextdays.dart';
import 'package:feature_first/features/dashboard/presentation/weather_of_today.dart';
import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DashboardScreen extends HookConsumerWidget {

  static String get path => "/dashboardScreen";
  static String get name => "dashboardScreen";

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(

      backgroundColor: ColorPalates.secondaryColor,
      body: BackgroundContainer(
        padding: EdgeInsets.fromLTRB(6.w, 6.h, 6.w, 0),
        child: SafeArea(
          child: Column(
            children: [
          
              Row(
                mainAxisAlignment: mainSpaceBetween,
                children:[
          
                  Opacity(
                    opacity: 0.30,
                    child: Container(
                      width: 20.w,
                      height: 20.w,
                      decoration: BoxDecoration(
                        color: ColorPalates.defaultWhite,
                        borderRadius: radius4
                      ),
                      child: Icon(
                        Icons.search,
                      ),
                    ),
                  ),


                  Text(
                      "London",
                    style: CustomTextStyles.primary,
                  ),


                  Opacity(
                    opacity: 0.30,
                    child: Container(
                      width: 20.w,
                      height: 20.w,
                      decoration: BoxDecoration(
                          color: ColorPalates.defaultWhite,
                          borderRadius: radius4
                      ),
                      child: Icon(
                        Icons.gps_fixed,
                      ),
                    ),
                  ),

          
                ]
              ),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      gap12,
                      
                      Text(
                        "Mostly Sunny",
                        style: CustomTextStyles.secondary,
                      ),
                      
                      gap6,
                      
                      Image.asset(
                        Assets.imagesCloud,
                        width: 100.w,
                        height: 70.w,
                      ),
                      
                      
                      Row(
                        mainAxisAlignment: mainCenter,
                        crossAxisAlignment: crossStart,
                        children: [
                          Text(
                            "23",
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
                        "Friday, 26 August 2022 | 10:00",
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


          
            ],
          ),
        ),
      ),
    );
  }
}
