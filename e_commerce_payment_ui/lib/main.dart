import 'core/components/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'core/components/constants/color_constants.dart';
import 'core/init/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeManager.createTheme(AppThemeDark()),
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('Material App Bar',
                style: Theme.of(context).textTheme.displayMedium),
          ),
          body: Center()),
    );
  }

/*
  ListView _buildListViewWidget(BuildContext context) {
    return ListView(
      children: [
        Container(
            color: ColorEnum.frenchRose.colorPath,
            child: Text('Hello World',
                style: Theme.of(context).textTheme.titleLarge)),
        Container(
            color: ColorEnum.frenchRose.colorPath, child: Text('Hello World')),
        Container(color: ColorEnum.denim.colorPath, child: Text('Hello World')),
        Container(
            color: ColorEnum.midnight.colorPath, child: Text('Hello World')),
        Container(
            color: ColorEnum.silverChalice.colorPath,
            child: Text('Hello World')),
        Container(color: ColorEnum.white.colorPath, child: Text('Hello World')),
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
    );
  }
  */
}
