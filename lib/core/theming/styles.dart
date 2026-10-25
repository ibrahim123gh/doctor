import 'package:doctor/core/theming/colors.dart';
import 'package:doctor/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle get fonts24Black70Bold => TextStyle(
    fontSize: 24.sp,
    color: Colors.black87,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle get fonts32BlueBold => TextStyle(
    fontSize: 32.sp,
    color: ColorManager.primaryColor,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle get fonts24BlueBold => TextStyle(
    fontSize: 24.sp,
    color: ColorManager.primaryColor,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle get fonts13GrayRegular => TextStyle(
    fontSize: 13.sp,
    color: ColorManager.gray,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle get fonts13BlueRegular => TextStyle(
    fontSize: 13.sp,
    color: ColorManager.primaryColor,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle get fonts14GrayRegular => TextStyle(
    fontSize: 14.sp,
    color: ColorManager.gray,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle get fonts14LightGrayRegular => TextStyle(
    fontSize: 14.sp,
    color: ColorManager.gray,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle get font14DarkBlueMedium => TextStyle(
    fontSize: 14.sp,
    color: ColorManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle get font16WhiteSemiBold => TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle get font13DarkBlueRegular => TextStyle(
    fontSize: 13.sp,
    color: ColorManager.darkBlue,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle get font13BlueSemiBold => TextStyle(
    fontSize: 13.sp,
    color: ColorManager.primaryColor,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle get font13GrayRegular => TextStyle(
    fontSize: 13.sp,
    color: ColorManager.gray,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle get font13DarkBlueMedium => TextStyle(
    fontSize: 13.sp,
    color: ColorManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
}
