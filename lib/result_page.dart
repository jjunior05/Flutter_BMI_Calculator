import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'button_bottom.dart';

class ResultsPage extends StatelessWidget {
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
                    "Normal",
                    style: KResultTextStyle,
                  ),
                  Text(
                    "56",
                    style: KBMITextStyle,
                  ),
                  Text(
                    "Your BM result is quite low, you should eat more",
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
