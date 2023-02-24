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
        iconTheme: IconThemeData(color: theme.colors.iconColor),
        textTheme: theme.textTheme.textData,
        scaffoldBackgroundColor: theme.colors.scaffoldBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: theme.colors.appBarColor,
        ),
        dividerTheme: DividerThemeData(
          color: theme.colors.dividerColor,
          thickness: 1,
        ),
        cardColor: theme.colors.cardTappedColor,
        cardTheme: CardTheme(
          elevation: 0,
          color: theme.colors.scaffoldBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        radioTheme: RadioThemeData(
            fillColor:
                MaterialStatePropertyAll(theme.colors.optionSelectedColor)),
        bottomAppBarTheme:
            BottomAppBarTheme(color: theme.colors.colors.frenchRose),
        tabBarTheme: TabBarTheme(
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: theme.colors.tabBarSelectedColor,
            unselectedLabelColor: theme.colors.tabBarUnSelectedColor,
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                    width: 5,
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
