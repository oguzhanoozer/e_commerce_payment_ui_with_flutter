import 'package:flutter/foundation.dart' as Foundation;
import 'package:e_commerce_payment_ui/components/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'components/constants/color_constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 15.0, fontStyle: FontStyle.italic),
        ),
      ),
      title: 'Material App',
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (Foundation.kDebugMode) {}

    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar',
            style: Theme.of(context).textTheme.titleLarge),
      ),
      body: ListView(
        children: [
          WidgetsApp(color: Colors.red),
          Container(
              color: ColorEnum.frenchRose.colorPath,
              child: Text('Hello World',
                  style: Theme.of(context).textTheme.titleLarge)),
          Container(
              color: ColorEnum.frenchRose.colorPath,
              child: Text('Hello World')),
          Container(
              color: ColorEnum.denim.colorPath, child: Text('Hello World')),
          Container(
              color: ColorEnum.midnight.colorPath, child: Text('Hello World')),
          Container(
              color: ColorEnum.silverChalice.colorPath,
              child: Text('Hello World')),
          Container(
              color: ColorEnum.white.colorPath, child: Text('Hello World')),
          Image.asset(ImageConstants.icon_AliPay.iconPath, height: 50),
          Image.asset(ImageConstants.icon_iDealPay.iconPath, height: 50),
          Image.asset(ImageConstants.icon_AmericanExpressPay.iconPath,
              height: 100),
          Image.asset(ImageConstants.icon_ApplePay.iconPath, height: 100),
          Image.asset(ImageConstants.icon_BitcoinPay.iconPath, height: 100),
          Image.asset(ImageConstants.icon_Check.iconPath, height: 100),
          Image.asset(ImageConstants.icon_DinersClubPay.iconPath, height: 100),
          Image.asset(ImageConstants.icon_GiroCardPay.iconPath, height: 100),
          Image.asset(ImageConstants.icon_GiroPay.iconPath, height: 100),
          Image.asset(ImageConstants.icon_GooglePay.iconPath, height: 100),
          Image.asset(ImageConstants.icon_iDealPay.iconPath, height: 100),
          Image.asset(ImageConstants.icon_KlarnaPay.iconPath, height: 100),
          Image.asset(ImageConstants.icon_MasterCardPay.iconPath, height: 100),
          Image.asset(ImageConstants.icon_MaestroPay.iconPath, height: 100),
          Image.asset(ImageConstants.icon_PayPal.iconPath, height: 100),
          Image.asset(ImageConstants.icon_Przelewy24Pay.iconPath, height: 100),
          Image.asset(ImageConstants.icon_V_PAYPay.iconPath, height: 100),
          Image.asset(ImageConstants.icon_VisaPay.iconPath, height: 100),
          Center(child: Text('Hello World')),
        ],
      ),
    );
  }
}
