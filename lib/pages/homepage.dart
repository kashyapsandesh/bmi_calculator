// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: constant_identifier_names

import 'package:bmi_calculator/pages/roundicon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/pages/results_page.dart';

import 'buttom_button.dart';
import 'constant.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'calculator_brain.dart';

enum Gender {
  Male,
  Female,
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Color maleCardColor = inActiveColor;
  // Color femaleCardColor = inActiveColor;
  // ignore: prefer_typing_uninitialized_variables
  var selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;
  // void updateCardColor(GenderType setGender) {
  //   if (setGender == GenderType.Male) {
  //     if (maleCardColor == inActiveColor) {
  //       maleCardColor = activeColor;
  //       femaleCardColor = inActiveColor;
  //     } else {
  //       maleCardColor = inActiveColor;
  //     }
  //   }

  //   if (setGender == GenderType.Female) {
  //     if (femaleCardColor == inActiveColor) {
  //       femaleCardColor = activeColor;
  //       maleCardColor = inActiveColor;
  //     } else {
  //       femaleCardColor = inActiveColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B2748),
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
        backgroundColor: const Color(0xff0B2748),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.Male;
                        });
                      },
                      colour: selectedGender == Gender.Male
                          ? activeColor
                          : inActiveColor,
                      childCard: const iconContent(
                        iconMaterial: FontAwesomeIcons.mars,
                        label: "Male",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.Female;
                        });
                      },
                      colour: selectedGender == Gender.Female
                          ? activeColor
                          : inActiveColor,
                      childCard: const iconContent(
                          label: "Female",
                          iconMaterial: FontAwesomeIcons.venus),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: inActiveColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: labelTextMid,
                        ),
                        Text(
                          'cm',
                          style: labelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbColor: Colors.pink,
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xffC0EEE4),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0)),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          // activeColor: Color(0xff2C3568),
                          // inactiveColor: Color(0xffC0EEE4),
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          }),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {},
                      colour: inActiveColor,
                      childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: labelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: labelTextMid,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {},
                      colour: inActiveColor,
                      childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: labelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: labelTextMid,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ButtomButton(
              onTap: () {
                CalculatorBrain calc =
                    CalculatorBrain(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                          bmiResult: calc.calculateBMI(),
                          resultText: calc.getResult(),
                          interpretation: calc.getInterpretation())),
                );
              },
              buttonButtomName: 'CALCULATE',
            ),
          ],
        ),
      ),
    );
  }
}
