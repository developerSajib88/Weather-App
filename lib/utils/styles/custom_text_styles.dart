
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomTextStyles {

  static TextStyle primary = GoogleFonts.poppins(
    fontSize: 8.sp,
    color: ColorPalates.defaultWhite,
    fontWeight: FontWeight.w400,
    height: 1,
  );

  static TextStyle secondary = GoogleFonts.poppins(
    color: ColorPalates.defaultWhite,
    fontSize: 7.sp,
    fontWeight: FontWeight.w600,
    height: 1.07,
  );

  static TextStyle primaryBold = GoogleFonts.poppins(
    fontSize: 7.sp,
    color: ColorPalates.defaultWhite,
    fontWeight: FontWeight.w600,
  );

  static TextStyle titleTextStyles = GoogleFonts.poppins(
      fontSize: 10.sp,
      color: ColorPalates.defaultWhite,
      fontWeight: FontWeight.bold
  );


  static TextStyle descriptionTextStyles = GoogleFonts.poppins(
      fontSize: 6.sp,
      color: ColorPalates.secondaryColor,
      fontWeight : FontWeight.normal
  );


  static TextStyle buttonTextStyles = GoogleFonts.poppins(
      fontSize: 8.sp,
      color: ColorPalates.defaultWhite,
      fontWeight: FontWeight.bold
  );

}