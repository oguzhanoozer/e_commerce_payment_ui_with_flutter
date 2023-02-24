import 'package:e_commerce_payment_ui/core/init/theme/color/hex_color_convert.dart';
import 'package:flutter/material.dart';

class AppColors {
  final Color white = HexColor("#FFFFFF");
  final Color black = HexColor("#000000");
  final Color silverChalice = HexColor("#AFAFAF");
  final Color denim = HexColor("#1446EC");
  final Color frenchRose = HexColor("#F15085");
  final Color midnight = HexColor("#001A40");
  final Color backgroundColor = const Color(0xff001a40);
  final Color dividerColor = const Color(0xff233c60);
}

abstract class IColors {
  AppColors get colors;
  Color? cardTappedColor;
  Color? textColorWhite;
  Color? radioButtonSelectedColor;
  Color? optionSelectedColor;
  Color? iconColor;
  Color? dividerColor;
  Color? tabBarSelectedColor;
  Color? tabBarUnSelectedColor;
  Color? appBarColor;
  Color? scaffoldBackgroundColor;
  ColorScheme? colorScheme;
}
