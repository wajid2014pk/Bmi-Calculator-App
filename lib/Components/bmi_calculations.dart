import 'dart:math';

class BmiCalculation {
  BmiCalculation(this.height, this.weight);

  int height;
  int weight;

  late double _bmi;

  String? calculatedBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String? getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return 'Under-Weight';
    }
  }

  String? getDetails() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight. Stay Healthy !!!';
    } else {
      return 'You have a lower than normal body weight. Try to eat more ';
    }
  }
}
