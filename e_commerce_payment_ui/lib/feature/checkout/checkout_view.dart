import 'package:e_commerce_payment_ui/core/components/constants/string_constants.dart';
import 'package:e_commerce_payment_ui/feature/overview/overview_view.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../checkout_splash_view.dart';
import '../confirmation/confirmation_view.dart';
import '../payment_row/payment_view.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({
    super.key,
  });

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  final _tabBarLength = 3;
  final _initialIndex = 1;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
        length: _tabBarLength, vsync: this, initialIndex: _initialIndex);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          bottomNavigationBar: _buildBottomNavigator(context),
          appBar: _buildAppBar(context),
          body: _buildTabBarWidget(context)),
    );
  }

  void goToCheckoutView() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => CheckoutPaymentSplashView()));
  }

  BottomAppBar _buildBottomNavigator(BuildContext context) {
    return BottomAppBar(
      height: context.dynamicHeight(0.15),
      child: Center(
          child: TextButton(
              onPressed: () {
                goToCheckoutView();
              },
              child: Text(StringConstants.instance.continueText,
                  style: Theme.of(context).textTheme.labelMedium))),
    );
  }

  TabBarView _buildTabBarWidget(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: const [OverviewView(), PaymentViewPage(), ConfirmationView()],
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.arrow_back_ios_outlined),
      bottom: TabBar(
        labelStyle: Theme.of(context).textTheme.bodySmall,
        controller: _tabController,
        tabs: getTabsList(),
      ),
      title: Text(StringConstants.instance.checkoutText,
          style: Theme.of(context).textTheme.bodyLarge),
    );
  }

  List<Widget> getTabsList() {
    return [
      Tab(text: StringConstants.instance.overviewText),
      Tab(text: StringConstants.instance.paymentText),
      Tab(text: StringConstants.instance.confirmationText),
    ];
  }
}
