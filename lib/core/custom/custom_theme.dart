import 'package:flutter/material.dart';
import 'package:starrywave_screen/core/theme/constant/app_color.dart';

ColorScheme appColorScheme(){
  return ColorScheme(
      brightness: Brightness.light,
      primary: AppColor.gradient1,
      onPrimary: AppColor.gradient2,
      secondary: Colors.grey.shade300,
      onSecondary: AppColor.white,
      error: AppColor.error,
      onError: AppColor.warning,
      surface: Colors.white,
      onSurface: Colors.black
  );
}

