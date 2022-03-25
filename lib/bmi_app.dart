import 'package:bmi_calculator/bmi_body.dart';
import 'package:flutter/material.dart';

class BMIAPP extends StatelessWidget {
  const BMIAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: const BMIBODY(),
    );
  }
}
