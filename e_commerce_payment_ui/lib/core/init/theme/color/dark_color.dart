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
    scaffoldBackgroundColor = colors.backgroundColor;
    tabBarSelectedColor = colors.frenchRose;
    appBarColor = colors.backgroundColor;
    iconColor = colors.white;
    dividerColor = colors.dividerColor;
    optionSelectedColor = colors.frenchRose;
    textColorWhite = colors.white;
    radioButtonSelectedColor = colors.white;
    cardTappedColor = colors.frenchRose;
    colorScheme = const ColorScheme.dark().copyWith();
  }

  @override
  Color? iconColor;

  @override
  Color? dividerColor;

  @override
  Color? optionSelectedColor;

  @override
  Color? textColorWhite;

  @override
  Color? radioButtonSelectedColor;

  @override
  Color? cardTappedColor;
}
