import 'package:e_commerce_payment_ui/core/init/theme/text/text_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/text_theme.dart';

class DarkThemeText implements ITextTheme {
  @override
  DarkThemeText() {
    textData = const TextTheme(
        bodySmall: TextStyle(
          fontFamily: 'Proxima Nova',
          color: Color(0xffffffff),
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Proxima Nova',
          color: Color(0xffffffff),
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Proxima Nova',
          color: Color(0xffffffff),
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
        ),
        displayLarge: TextStyle(
          fontFamily: 'Proxima Nova',
          color: Color(0xffffffff),
          fontSize: 15,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
        ),
        displayMedium: TextStyle(
          fontFamily: 'Proxima Nova',
          color: Color(0xffffffff),
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        labelMedium: TextStyle(
          fontFamily: 'Proxima Nova',
          color: Color(0xffffffff),
          fontSize: 15,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          letterSpacing: 1.5,
        ),
        labelSmall: TextStyle(
          fontFamily: 'Proxima Nova',
          color: Color(0xffffffff),
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
        ));
  }

  @override
  late TextTheme textData;
}
