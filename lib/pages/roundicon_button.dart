import 'package:bmi_calculator/pages/constant.dart';
import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, required this.icon, required this.onPress});
  final IconData icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
        size: 24,
      ),
      onPressed: onPress,
      elevation: 10,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: inActiveColor,
    );
  }
}

// ignore: camel_case_types

