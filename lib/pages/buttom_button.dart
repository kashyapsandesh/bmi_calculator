import 'package:flutter/material.dart';
import 'constant.dart';
class ButtomButton extends StatelessWidget {
  const ButtomButton({
    Key? key,
    required this.buttonButtomName,
    this.onTap,
  }) : super(key: key);
  // ignore: empty_constructor_bodies

  final String buttonButtomName;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonButtomName,
            style: KLargeButtonTextStyle,
          ),
        ),
        color: const Color(0xffEB1555),
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: buttomContainerHeight,
      ),
    );
  }
}
