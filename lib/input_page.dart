import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

import 'main.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender { male, female }
int height = 180;
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        ? KActiveCardColour
                        : KInactiveCardColour,
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
                        ? KActiveCardColour
                        : KInactiveCardColour,
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
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "height",
                          style:
                              KLabelTextStyle, //Constante importada do arquivo 'constants.dart', usando o 'K' na nomeclatura
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(
                              height.toString(),
                              style: KNumberTextStyle2,
                            ),
                            Text(
                              "cm",
                              style: KLabelTextStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Color(0xFF8D8E98),
                            thumbColor: Color(0xFFEB1555),
                            overlayColor: Color(0x29EB1555),
                            activeTrackColor: Colors.white,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                    colour: KActiveCardColour,
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
                    colour: KActiveCardColour,
                    childCard: Column(
                      children: [],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: KActiveCardColour,
                    childCard: Column(
                      children: [],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: KBottomContainerColor,
            margin: EdgeInsets.only(
              top: 10.0,
            ),
            width: double.infinity,
            height: KBottomContainerHeight,
          )
        ],
      ),
    );
  }
}
