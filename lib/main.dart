import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

import 'input_dart.dart';
import 'reusable_card.dart';

const BottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1F33);
const inactiveCardColour = Color(0xFF111328);
const BottomContainerColor = Color(0xFFEB1555);
enum Gender { male, female }
void main() {
  runApp(BmiCalculator()); //Import input_card
}

class inputPage extends StatefulWidget {
  @override
  _inputPageState createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
  Gender selectedGender;
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
                  /** Class ReusableCard
                   * Classe ReusableCard com os parâmetros (onPressed, colour,childCard)
                   * **/
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    /** Ternary operator para otimizar a escolha Female or Male através do Enum Gender
                     * **/
                    colour: selectedGender == Gender.male
                        ? activeCardColour
                        : inactiveCardColour,
                    childCard: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: "Male",
                    ),
                  ),
                ),
                Expanded(
                  /** Class ReusableCard
                   * Classe ReusableCard com os parâmetros (onPressed, colour,childCard)
                   * **/
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    /** Ternary operator para otimizar a escolha Female or Male através do Enum Gender
                     * **/
                    colour: selectedGender == Gender.female
                        ? activeCardColour
                        : inactiveCardColour,
                    childCard: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "Female",
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
