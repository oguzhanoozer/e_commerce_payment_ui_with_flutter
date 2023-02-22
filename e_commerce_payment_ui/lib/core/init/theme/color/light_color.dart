import 'dart:ui';
import 'package:e_commerce_payment_ui/core/init/theme/color/color_manager.dart';
import 'package:flutter/src/material/color_scheme.dart';

class LightColors implements IColors {
  @override
  ColorScheme? colorScheme;

  @override
  Color? scaffoldBackgroundColor;

  @override
  AppColors colors = AppColors();

  @override
  Color? appBarColor;

  @override
  Color? tabBarSelectedColor;

  @override
  Color? tabBarUnSelectedColor;

  LightColors() {
    tabBarUnSelectedColor = colors.silverChalice;
    scaffoldBackgroundColor = colors.white;
    tabBarSelectedColor = colors.denim;
    appBarColor = colors.white;
    colorScheme = const ColorScheme.light().copyWith();
  }
}
