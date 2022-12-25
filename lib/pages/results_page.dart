import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B2748),
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: const Color(0xff0B2748),
        elevation: 0,
      ),
      body: Text('Hello Result Page'),
    );
  }
}
