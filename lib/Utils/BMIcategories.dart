
import 'package:flutter/material.dart';

String getBMICategory(double bmi) {
  if (bmi < 18.5) {
    return 'Underweight';
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    return 'Normal';
  } else if (bmi >= 25 && bmi <= 29.9) {
    return 'Overweight';
  } else {
    return 'Obese';
  }
}

Color getBMIColor(double bmi) {
  if (bmi < 18.5) {
    return Colors.blue;
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    return Colors.green;
  } else if (bmi >= 25 && bmi <= 29.9) {
    return Colors.orange;
  } else {
    return Colors.red;
  }
}
