import 'package:e_commerce_payment_ui/feature/checkout/checkout_view.dart';
import 'package:flutter/material.dart';

import 'core/init/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.createTheme(AppThemeLight()),
      title: 'Material App',
      home: const CheckoutView(),
    );
  }
}
