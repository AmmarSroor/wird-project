import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/images.dart';

class BuildLogo extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildLogo({required this.screenHeight,required this.screenWidth,});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight * 0.3,
      left: screenWidth * 0.23,
      child: Image.asset(
        kLOGO,
        width: screenWidth * 0.55,
        height: screenHeight * 0.38,
        fit: BoxFit.fill,
      ),
    );
  }
}
