
import 'package:feature_first/common/widgets/components/background_card.dart';
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextDaysWeatherItemView extends StatelessWidget {

  final String image;
  final String day;
  final String conditionType;
  final String minMaxTempC;

  const NextDaysWeatherItemView({
    super.key,
    required this.image,
    required this.day,
    required this.conditionType,
    required this.minMaxTempC
  });

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

            Image.network(
              image,
              width: 30.w,
              height: 30.w,
            ),


            gap4,


            Column(
              mainAxisAlignment: mainCenter,
              crossAxisAlignment: crossStart,
              children: [
                Text(
                  day,
                  style: CustomTextStyles.secondary,
                ),

                gap4,

                Text(
                  conditionType,
                  style: CustomTextStyles.primary.copyWith(
                    fontSize: 6.sp,
                    color: ColorPalates.defaultWhite.withOpacity(0.7)
                  ),
                ),

              ],
            ),



            gap12,

            Text(
              minMaxTempC,
              style: CustomTextStyles.primaryBold,
            ),

          ],
        ),
      ),
    );
  }
}
