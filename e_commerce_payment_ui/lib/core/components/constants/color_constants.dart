import 'package:flutter/material.dart';
import '../../init/theme/color/hex_color_convert.dart';

enum ColorEnum {
  white("#FFFFFF"),
  black("#000000"),
  silverChalice("#AFAFAF"),
  denim("#1446EC"),
  frenchRose("#F15085"),
  midnight("#001A40");

  final String hexCode;
  const ColorEnum(this.hexCode);
}

extension ColorPathExtension on ColorEnum {
  Color get colorPath => HexColor("${this.hexCode}");
}
