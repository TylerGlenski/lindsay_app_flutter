import 'package:flutter/material.dart';
import 'constants.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard(
      {this.text, this.fontSize, this.fontFamily, this.color, this.textColor});

  final String text;
  final double fontSize;
  final String fontFamily;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: kCardIconCart,
        title: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontFamily: fontFamily,
            fontSize: fontSize,
          ),
        ),
      ),
      color: color,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    );
  }
}
