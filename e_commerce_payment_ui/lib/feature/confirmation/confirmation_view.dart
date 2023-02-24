import 'package:flutter/material.dart';

import '../../core/components/constants/string_constants.dart';

class ConfirmationView extends StatelessWidget {
  const ConfirmationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(StringConstants.instance.confirmationText,
          style: Theme.of(context).textTheme.bodySmall),
    );
  }
}
