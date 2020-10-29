import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_dart.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const BottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1F33);
const inactiveCardColour = Color(0xFF111328);
const BottomContainerColor = Color(0xFFEB1555);

void main() {
  runApp(BmiCalculator());
}

class inputPage extends StatefulWidget {
  @override
  _inputPageState createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  // 1 == male, 2 == female
  void updateColour(int gender) {
    if (gender == 1) {
      if (maleCardColour == inactiveCardColour)
        maleCardColour = activeCardColour;
      else {
        maleCardColour = inactiveCardColour;
      }
      femaleCardColour = inactiveCardColour;
    } else {
      if (femaleCardColour == inactiveCardColour)
        femaleCardColour = activeCardColour;
      else
        femaleCardColour = inactiveCardColour;
      maleCardColour = inactiveCardColour;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(1);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColour,
                      childCard: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "Male",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColour,
                      childCard: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "Female",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    childCard: Column(
                      children: [],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    childCard: Column(
                      children: [],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    childCard: Column(
                      children: [],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: BottomContainerColor,
            margin: EdgeInsets.only(
              top: 10.0,
            ),
            width: double.infinity,
            height: BottomContainerHeight,
          )
        ],
      ),
    );
  }
}
