import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../core/components/constants/image_constants.dart';
import '../../core/components/constants/string_constants.dart';
import 'payment_row_view.dart';

List<Widget> getPaymentList(BuildContext context) {
  return [
    BuildPaymentRowView(
        isTap: true,
        paymentUrl: ImageConstants.icon_PayPal.iconPath,
        paymentText: StringConstants.instance.payPayText),
    BuildPaymentRowView(
        paymentUrl: ImageConstants.icon_ApplePay.iconPath,
        paymentText: StringConstants.instance.applePayText),
    BuildPaymentRowView(
        paymentUrl: ImageConstants.icon_GooglePay.iconPath,
        paymentText: StringConstants.instance.googlePayText),
    BuildPaymentRowView(
        paymentUrl: ImageConstants.icon_AliPay.iconPath,
        paymentText: StringConstants.instance.aliPayText),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(StringConstants.instance.showMore,
            style: Theme.of(context).textTheme.displayMedium),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.expand_more_sharp,
            size: context.dynamicHeight(0.04),
          ),
        )
      ],
    )
  ];
}
