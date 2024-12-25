import 'package:feature_first/common/widgets/components/background_card.dart';
import 'package:feature_first/generated/assets.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextDaysWeatherItemView extends StatelessWidget {
  const NextDaysWeatherItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingRight6,
      child: BackgroundCard(
        padding: padding6,
        child: Row(
          crossAxisAlignment: crossCenter,
          mainAxisAlignment: mainStart,
          children: [

            Image.asset(
              Assets.imagesCloud,
              width: 30.w,
              height: 30.w,
            ),


            gap4,


            Column(
              mainAxisAlignment: mainCenter,
              crossAxisAlignment: crossStart,
              children: [
                Text(
                  "Wednesday",
                  style: CustomTextStyles.secondary,
                ),

                gap4,

                Text(
                  "Thunder",
                  style: CustomTextStyles.primary.copyWith(
                    fontSize: 6.sp,
                    color: ColorPalates.defaultWhite.withOpacity(0.7)
                  ),
                ),

              ],
            ),



            gap12,

            Text(
              "^23/25",
              style: CustomTextStyles.primaryBold,
            ),

          ],
        ),
      ),
    );
  }
}
