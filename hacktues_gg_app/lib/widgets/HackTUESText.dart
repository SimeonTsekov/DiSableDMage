import 'package:flutter/material.dart';

class HackTUESText extends StatelessWidget {
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final int maxLines;
  final double letterSpacing;
  final String text;

  const HackTUESText(this.text,
      {Key? key,
      this.fontSize = 14.0,
      this.fontWeight = FontWeight.normal,
      this.textAlign = TextAlign.start,
      this.maxLines = 1,
      this.letterSpacing = 1.2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: letterSpacing,
          fontFamily: 'Europe_Ext'),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
