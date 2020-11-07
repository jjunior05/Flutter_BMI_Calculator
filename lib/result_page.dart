import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'button_bottom.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.interpretation,
      @required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR RESUT"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              "Your Result",
              style: KLabelTextTitle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: KActiveCardColour,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: KResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: KBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: KBMITextBody,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: "RE_CALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
