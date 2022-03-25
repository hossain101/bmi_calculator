import 'package:bmi_calculator/body_card.dart';
import 'package:bmi_calculator/bottom_card1.dart';
import 'package:bmi_calculator/bottom_card2.dart';
import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/result_screen.dart';
import 'package:bmi_calculator/top_card.dart';
import 'package:bmi_calculator/mid_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color activeColor = Color.fromARGB(255, 21, 21, 194);
const Color inActiveColor = Color(0xFF1D1E33);

class BMIBODY extends StatefulWidget {
  const BMIBODY({Key? key}) : super(key: key);

  @override
  State<BMIBODY> createState() => _BMIBODYState();
}

class _BMIBODYState extends State<BMIBODY> {
  Color maleColor = inActiveColor;
  Color femaleColor = inActiveColor;

  //int height = 180;

  MidCard midCard = MidCard(height: 180);
  BottomCard1 bottomCard1 = BottomCard1(weight: 45);

  void onTappedColor(String gender) {
    if (gender == 'male' && maleColor == inActiveColor) {
      setState(() {
        maleColor = activeColor;
        femaleColor = inActiveColor;
      });
    } else if (gender == 'male' && maleColor == activeColor) {
      setState(() {
        maleColor = inActiveColor;
        femaleColor = inActiveColor;
      });
    } else if (gender == 'female' && femaleColor == inActiveColor) {
      setState(() {
        maleColor = inActiveColor;
        femaleColor = activeColor;
      });
    } else if (gender == 'female' && femaleColor == activeColor) {
      setState(() {
        femaleColor = inActiveColor;
        femaleColor = inActiveColor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        backgroundColor: const Color(0xFF0A0E21),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //First Row
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => onTappedColor('male'),
                    child: BodyCard(
                      maleColor,
                      TopCard("MALE", FontAwesomeIcons.mars),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => onTappedColor('female'),
                    child: BodyCard(
                      femaleColor,
                      TopCard("FEMALE", FontAwesomeIcons.venus),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Second Row
          Expanded(
            child: BodyCard(
              inActiveColor,
              midCard,
            ),
          ),
          //Third Row
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BodyCard(
                    inActiveColor,
                    bottomCard1,
                  ),
                ),
                Expanded(
                  child: BodyCard(
                    inActiveColor,
                    BottomCard2(),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrian calc = CalculatorBrian(
                  height: midCard.height, weight: bottomCard1.weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResults(),
                    interpretation: calc.getInterpretations(),
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.fromLTRB(60, 20, 20, 20),
              width: double.infinity,
              height: 80.0,
              color: const Color(0xFFEB1555),
              child: const Text(
                'Calculate Your BMI',
                style: TextStyle(fontSize: 35.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
