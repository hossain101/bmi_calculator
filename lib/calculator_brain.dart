import 'dart:math';

class CalculatorBrian {
  late int height;
  late int weight;
  double bmi = 0;

  CalculatorBrian({required this.height, required this.weight});

  String calculateBMI() {
    bmi = weight / pow((height / 100), 2);

    return bmi.toStringAsFixed(1);
  }

  String getResults() {
    late String result;
    if (bmi >= 25) {
      result = 'Over Weight';
    } else if (bmi > 18.5 && bmi < 25) {
      result = 'Normal';
    } else if (bmi < 18.5) {
      result = 'Under Weight';
    }

    return result;
  }

  String getInterpretations() {
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }
}
