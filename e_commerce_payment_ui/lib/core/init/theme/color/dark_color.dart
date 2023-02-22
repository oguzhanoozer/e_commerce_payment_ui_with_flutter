import 'dart:ui';
import 'package:e_commerce_payment_ui/core/init/theme/color/color_manager.dart';
import 'package:flutter/src/material/color_scheme.dart';

class DarkColors implements IColors {
  @override
  ColorScheme? colorScheme;

  @override
  Color? scaffoldBackgroundColor;

  @override
  Color? tabBarSelectedColor;

  @override
  Color? appBarColor;

  @override
  AppColors colors = AppColors();

  @override
  Color? tabBarUnSelectedColor;

  DarkColors() {
    tabBarUnSelectedColor = colors.white;
    scaffoldBackgroundColor = colors.black;
    tabBarSelectedColor = colors.frenchRose;
    appBarColor = colors.black;
    colorScheme = const ColorScheme.dark().copyWith();
  }
}
