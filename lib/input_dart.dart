import 'package:flutter/material.dart';
import 'main.dart';

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF232323),
        scaffoldBackgroundColor: Color(0xFF232323),
      ),
      home: inputPage(),
    );
  }
}
