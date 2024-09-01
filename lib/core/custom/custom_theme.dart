import 'package:flutter/material.dart';
import 'package:starrywave_screen/core/theme/constant/app_color.dart';

ColorScheme appColorScheme(){
  return ColorScheme(
      brightness: Brightness.light,
      primary: AppColor.gradient1,
      onPrimary: AppColor.gradient2,
      secondary: AppColor.black,
      onSecondary: AppColor.white,
      error: AppColor.error,
      onError: AppColor.warning,
      surface: AppColor.success,
      onSurface: AppColor.info
  );
}

