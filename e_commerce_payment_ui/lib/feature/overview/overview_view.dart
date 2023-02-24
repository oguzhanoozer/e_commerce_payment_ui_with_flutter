import 'package:flutter/material.dart';

import '../../core/components/constants/string_constants.dart';

class OverviewView extends StatelessWidget {
  const OverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(StringConstants.instance.overviewText,
          style: Theme.of(context).textTheme.bodySmall),
    );
  }
}
