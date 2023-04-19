import 'package:bmi_calculator/Components/bottom_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/Components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({this.bmiResult, this.interpretation, this.resultText});

  final String? bmiResult;
  final String? interpretation;
  final String? resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI CALCULATOR"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Result".toUpperCase(),
                  style: titleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText!,
                        style: resultTextStyle,
                      ),
                      Text(
                        bmiResult!,
                        style: bmiTextStyle,
                      ),
                      Text(
                        interpretation!,
                        textAlign: TextAlign.center,
                        style: bodyBmiTextStyle,
                      ),
                    ],
                  ),
                  onPress: () {}),
            ),
            BottomButton(
              buttonText: "RE-CACULATE",
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ));
  }
}
