import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.weight, @required this.height});

  final weight;
  final height;
  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overwight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have a higher than normal body weight. Try to execute more.";
    } else if (_bmi > 18.5) {
      return "You have normal body weight. Good job!!";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more.";
    }
  }
}
