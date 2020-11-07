import 'package:flutter/material.dart';
import 'input_page.dart';

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF232323),
        scaffoldBackgroundColor: Color(0xFF232323),
      ),
      home: InputPage(),
    );
  }
}
