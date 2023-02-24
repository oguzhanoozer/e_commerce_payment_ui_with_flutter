import 'package:flutter/material.dart';
import 'package:e_commerce_payment_ui/core/components/constants/image_constants.dart';
import '../core/components/constants/string_constants.dart';
import '../core/widget/elevated_button_core.dart';

class CheckoutPaymentSplashView extends StatelessWidget {
  const CheckoutPaymentSplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(ImageConstants.image_Paypal_large.imagePath),
          ),
          Expanded(
              flex: 2,
              child: Center(
                  child: ElevatedButtonWidget(
                buttonText: StringConstants.instance.checkoutText,
              ))),
        ],
      ),
    );
  }
}
