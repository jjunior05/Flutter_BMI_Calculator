import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_dart.dart';

void main() {
  runApp(BmiCalculator());
}

class inputPage extends StatefulWidget {
  @override
  _inputPageState createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
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
                  child: ReusableCard(
                    Color(0xFF1D1E33),
                    BorderRadius.circular(10.0),
                    EdgeInsets.all(15.0),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    Color(0xFF1D1E33),
                    BorderRadius.circular(10.0),
                    EdgeInsets.all(15.0),
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
                    Color(0xFF1D1E33),
                    BorderRadius.circular(10.0),
                    EdgeInsets.all(15.0),
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
                    Color(0xFF1D1E33),
                    BorderRadius.circular(10.0),
                    EdgeInsets.all(15.0),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    Color(0xFF1D1E33),
                    BorderRadius.circular(10.0),
                    EdgeInsets.all(15.0),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final EdgeInsets edge;
  final BorderRadius border;
  final Color colour;

  ReusableCard(
      @required this.colour, @required this.border, @required this.edge);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: edge,
      decoration: BoxDecoration(
        borderRadius: this.border,
        color: this.colour,
      ),
    );
  }
}
