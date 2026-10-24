import 'package:doctor/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle get fonts24Black70Weight700 => TextStyle(
    fontSize: 24.sp,
    color: Colors.black87,
    fontWeight: FontWeight.w700,
  );

  static TextStyle get fonts32BlueBold => TextStyle(
    fontSize: 32.sp,
    color: ColorManager.primaryColor,
    fontWeight: FontWeight.w700,
  );

  static TextStyle get fonts13GrayRegular => TextStyle(
    fontSize: 13.sp,
    color: ColorManager.gray,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get font16WhiteSemiBold => TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
}
