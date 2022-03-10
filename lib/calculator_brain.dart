import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double? _bmi;

  String? calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi?.toStringAsFixed(1);
  }

  String? getResult() {
    if (_bmi! >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi! > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String? getFeedBack() {
    if (_bmi! >= 25) {
      return 'You have higher than normal body weight try to exercise more';
    } else if (_bmi! > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have lower than normal body weight, you can eat bit more';
    }
  }

  Color? getColor() {
    if (_bmi! >= 25) {
      return const Color(0xFFFF0000);
    } else if (_bmi! > 18.5) {
      return const Color(0xFF00D21D);
    } else {
      return const Color(0xFF0062FF);
    }
  }
}
