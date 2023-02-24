import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../components/constants/color_constants.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: _buildElevatedButtonStyle(context),
        onPressed: () {},
        child: Text(buttonText, style: Theme.of(context).textTheme.labelSmall));
  }

  ButtonStyle _buildElevatedButtonStyle(BuildContext context) {
    return ButtonStyle(
        fixedSize: MaterialStateProperty.all(
            Size(context.dynamicWidth(0.5), context.dynamicHeight(0.07))),
        backgroundColor:
            MaterialStateProperty.all(ColorEnum.blueButtonColor.colorPath),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        )));
  }
}
