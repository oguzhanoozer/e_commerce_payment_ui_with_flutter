import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../core/components/constants/string_constants.dart';
import 'payment_row_list.dart';

class PaymentViewPage extends StatelessWidget {
  const PaymentViewPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: context.paddingNormal,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: _buildSelectPaymentText(context),
            ),
            Expanded(flex: 12, child: _buildListViewWidget(context)),
            _buildTextRowWidget(context),
          ],
        ),
      ),
    );
  }

  Row _buildTextRowWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildTotalTextWidget(StringConstants.instance.totalText, context),
        _buildTotalTextWidget(StringConstants.instance.priceText, context),
      ],
    );
  }

  Padding _buildSelectPaymentText(BuildContext context) {
    return Padding(
      padding: context.paddingNormal,
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(StringConstants.instance.selectYourPaymentMethodText,
              style: Theme.of(context).textTheme.bodyMedium)),
    );
  }

  Text _buildTotalTextWidget(String title, BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.displayLarge);
  }

  ListView _buildListViewWidget(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: getPaymentList(context).length,
        itemBuilder: (context, index) => getPaymentList(context)[index]);
  }
}
