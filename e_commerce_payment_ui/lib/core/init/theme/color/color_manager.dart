import 'package:e_commerce_payment_ui/core/init/theme/color/hex_color_convert.dart';
import 'package:flutter/material.dart';

class AppColors {
  final Color white = HexColor("#FFFFFF");
  final Color black = HexColor("#000000");
  final Color silverChalice = HexColor("#AFAFAF");
  final Color denim = HexColor("#1446EC");
  final Color frenchRose = HexColor("#F15085");
  final Color midnight = HexColor("#001A40");
}

abstract class IColors {
  AppColors get colors;
  Color? tabBarSelectedColor;
  Color? tabBarUnSelectedColor;
  Color? appBarColor;
  Color? scaffoldBackgroundColor;
  ColorScheme? colorScheme;
}
