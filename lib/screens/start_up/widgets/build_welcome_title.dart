import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';

class BuildWelcomeTitle extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  BuildWelcomeTitle({required this.screenWidth ,required this.screenHeight});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight * 0.19,
      right: screenWidth * 0.08,
      child: Text(
        WELCOME,
        style: TextStyle(
          color: Colors.white,
          fontSize: screenWidth*0.12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
