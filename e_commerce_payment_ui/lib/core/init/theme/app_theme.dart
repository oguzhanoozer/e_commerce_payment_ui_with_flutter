import 'package:e_commerce_payment_ui/core/init/theme/abstract_theme_manager.dart';
import 'package:e_commerce_payment_ui/core/init/theme/color/dark_color.dart';
import 'package:e_commerce_payment_ui/core/init/theme/color/light_color.dart';
import 'package:e_commerce_payment_ui/core/init/theme/text/light_text.dart';
import 'package:e_commerce_payment_ui/core/init/theme/text/text_manager.dart';
import 'package:e_commerce_payment_ui/core/init/theme/color/color_manager.dart';
import 'package:flutter/material.dart';
import 'text/dark_text.dart';

abstract class ThemeManager {
  static ThemeData createTheme(ITheme theme) => ThemeData(
        textTheme: theme.textTheme.textData,
        scaffoldBackgroundColor: theme.colors.scaffoldBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: theme.colors.appBarColor,
        ),
        tabBarTheme: TabBarTheme(
            labelColor: theme.colors.tabBarSelectedColor,
            unselectedLabelColor: theme.colors.tabBarUnSelectedColor,
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                    color: theme.colors.tabBarSelectedColor ?? Colors.red))),
      );
}

class AppThemeLight implements ITheme {
  @override
  IColors get colors => LightColors();

  @override
  ITextTheme get textTheme => TextThemeLight();
}

class AppThemeDark implements ITheme {
  @override
  IColors get colors => DarkColors();

  @override
  ITextTheme get textTheme => DarkThemeText();
}
