import 'package:flutter/material.dart';

TextSpan buildTextSpan({required String text,required int hexColor ,required double screenWidth}) {
  return TextSpan(
    text: text,
    style: TextStyle(
      color: Color(hexColor),
      fontSize: screenWidth * 0.065,
      fontWeight: FontWeight.bold,
    ),
  );
}