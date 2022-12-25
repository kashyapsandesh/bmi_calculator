// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'buttom_button.dart';
import 'constant.dart';
import 'homepage.dart';
import 'reusable_card.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    Key? key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  }) : super(key: key);
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B2748),
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: const Color(0xff0B2748),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Your Result',
                style: KTitleTopButton,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: Colors.black12,
              childCard: Container(
                child: SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText.toUpperCase(),
                        style: KResultTitle,
                      ),
                      Text(
                        bmiResult,
                        style: KBMITextStyle,
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: KBMIBodyStyle,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          ButtomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonButtomName: 'RE CALCULATE',
          ),
        ],
      ),
    );
  }
}
