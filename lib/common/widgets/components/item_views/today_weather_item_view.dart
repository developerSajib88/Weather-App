import 'package:feature_first/common/widgets/components/background_card.dart';
import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodayWeatherItemView extends StatelessWidget {
  const TodayWeatherItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingRight6,
      child: BackgroundCard(
        width: 40.w,
        child: Column(
          crossAxisAlignment: crossCenter,
          mainAxisAlignment: mainCenter,
          children: [

            Text(
              "12 AM",
              style: CustomTextStyles.primaryBold,
            ),

            gap4,

            Image.asset(
              Assets.imagesCloud,
              width: 30.w,
              height: 30.w,
            ),

            gap4,

            Row(
              mainAxisAlignment: mainCenter,
              children: [

                Text(
                    "23",
                  style: CustomTextStyles.primary,
                ),

                Padding(
                  padding: paddingBottom4,
                  child: Text(
                    "o",
                    style: CustomTextStyles.secondary,
                  ),
                )

              ],
            )

          ],
        ),
      ),
    );
  }
}
