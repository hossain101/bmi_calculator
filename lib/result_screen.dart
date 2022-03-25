import 'package:bmi_calculator/body_card.dart';
import 'package:bmi_calculator/top_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  late String bmiResult;
  late String resultText;
  late String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.bottomCenter,
              child: const Text(
                'YOUR RESULT',
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: BodyCard(
              const Color(0xFF1D1E33),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: const TextStyle(
                      color: Color(0XFF34D876),
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: const TextStyle(
                        fontSize: 100.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    interpretation,
                    style: const TextStyle(fontSize: 22.0),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (() => Navigator.pop(context)),
            child: Container(
              // padding: EdgeInsets.fromLTRB(60, 20, 20, 20),
              alignment: Alignment.center,
              width: double.infinity,
              height: 80.0,
              color: const Color(0xFFEB1555),
              child: const Text(
                'RE-CALCULATE',
                style: TextStyle(fontSize: 35.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
