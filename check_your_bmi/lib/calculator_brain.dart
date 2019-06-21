import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.0) {
      return 'Normal';
    } else
      return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi < 18.5) {
      return 'Your bmi score is to low. You should eat more!';
    } else if (_bmi >= 25.0) {
      return 'You bmi score is to high. Try to exercise more.';
    } else
      return 'Good job! You have a normal body weight.';
  }
}
