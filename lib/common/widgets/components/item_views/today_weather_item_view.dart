import 'package:feature_first/common/widgets/components/background_card.dart';
import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodayWeatherItemView extends StatelessWidget {
  final String time;
  final String image;
  final String value;
  const TodayWeatherItemView({
    super.key,
    required this.time,
    required this.image,
    required this.value
  });

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
              time,
              style: CustomTextStyles.primaryBold,
            ),

            gap4,

            Image.network(
              image,
              width: 30.w,
              height: 30.w,
            ),

            gap4,

            Row(
              mainAxisAlignment: mainCenter,
              children: [

                Text(
                    value,
                  style: CustomTextStyles.primary,
                ),

                gap2,

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
