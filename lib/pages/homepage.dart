import 'package:flutter/material.dart';

const double buttomContainerHeight = 70;
const changeColor = Color(0xffF0E9D2);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0B2748),
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
          backgroundColor: Color(0xff0B2748),
          elevation: 0,
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: ReusableCard(colour: changeColor)),
                    Expanded(
                      child: ReusableCard(colour: changeColor),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(colour: changeColor),
              ),
              Expanded(
                child: Row(
                  children: const [
                    Expanded(
                      child: ReusableCard(colour: changeColor),
                    ),
                    Expanded(child: ReusableCard(colour: changeColor)),
                  ],
                ),
              ),
              Container(
                color: Color(0xffEB1555),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: buttomContainerHeight,
              )
            ],
          ),
        ));
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key, required this.colour, required this.childCard});
  final Color colour;
  final Widget childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
    );
  }
}
