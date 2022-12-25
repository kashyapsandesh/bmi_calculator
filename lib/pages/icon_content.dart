import 'package:flutter/material.dart';

const labelContentStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xffffffff),
);

// ignore: camel_case_types
class iconContent extends StatelessWidget {
  const iconContent({
    Key? key,
    required this.iconMaterial,
    required this.label,
  }) : super(key: key);
  final IconData iconMaterial;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconMaterial,
          size: 80.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelContentStyle,
        )
      ],
    );
  }
}
