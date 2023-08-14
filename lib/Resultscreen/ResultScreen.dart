import 'package:bmi_app/Theme/Colors.dart';
import 'package:flutter/material.dart';

import '../Utils/BMIcategories.dart';
import '../Utils/CustomText.dart';

class ResultScreen extends StatelessWidget {
  final double bmiResult;

  const ResultScreen({Key? key, required this.bmiResult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String category = getBMICategory(bmiResult);
    Color categoryColor = getBMIColor(bmiResult);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonclr,
      ),
      body: Container(
        color: buttonclr,
        child: Column(
          children: [
            const Center(
              child: CustomText(
                text: 'Results',
                size: 24,
                weight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 300,
              width: 380,
              decoration: BoxDecoration(
                color: background,
                borderRadius: BorderRadius.circular(24),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 4.0,
                    spreadRadius: 1.0,
                    offset: Offset(
                      1.5,
                      1.5,
                    ),
                  )
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    text: 'Your BMI is',
                    size: 30,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomText(
                    text: bmiResult.toStringAsFixed(2),
                    size: 42,
                    color: buttonclr,
                    weight: FontWeight.bold,
                    spacing: 1.2,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    text: 'Kg/m^2',
                    size: 16,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Center(
                    child: CustomText(
                      text: 'Your are ',
                      color: Colors.black,
                      size: 16,
                    ),
                  ),
                  CustomText(
                    text: category,
                    color: categoryColor,
                    size: 16,
                    weight: FontWeight.bold,
                  )
                ],
              ),
            ), // Display BMI with two decimal places

            const SizedBox(height: 50),
            const Center(
              child: CustomText(
                text: '    BMI Categories\n'
                    '\n'
                    'Normal: 18.5 - 24.9\n'
                    'Underweight: <18.5\n'
                    'Overweight: 25 - 29.9\n'
                    'Obese: 30',
                size: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
