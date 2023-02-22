import 'package:flutter/material.dart';

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

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
