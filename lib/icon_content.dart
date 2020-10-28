import 'package:flutter/material.dart';

const TextStyle labelTextStyle = TextStyle(
  color: Color(0xFF8D8E98),
  fontSize: 18.0,
);
const size = 50.0;
const height = 15.0;

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  IconContent({@required this.icon, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: size,
        ),
        SizedBox(
          height: height,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
