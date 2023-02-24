import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../core/components/constants/image_constants.dart';

class BuildPaymentRowView extends StatelessWidget {
  const BuildPaymentRowView(
      {super.key,
      required this.paymentUrl,
      required this.paymentText,
      this.isTap = false});

  final String paymentUrl;
  final String paymentText;
  final bool isTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isTap
          ? Theme.of(context).cardColor
          : Theme.of(context).scaffoldBackgroundColor,
      child: _buildPaymentRow(context),
    );
  }

  Row _buildPaymentRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Image.asset(
            isTap
                ? ImageConstants.icon_toggle_selected.iconPath
                : ImageConstants.icon_toggle_unselected.iconPath,
            height: context.dynamicHeight(0.03),
          ),
        ),
        Expanded(
          flex: 3,
          child: Image.asset(
            fit: BoxFit.contain,
            paymentUrl,
          ),
        ),
        const Expanded(
          flex: 2,
          child: SizedBox(),
        ),
        Expanded(
          flex: 4,
          child:
              Text(paymentText, style: Theme.of(context).textTheme.bodyMedium),
        ),
      ],
    );
  }
}
