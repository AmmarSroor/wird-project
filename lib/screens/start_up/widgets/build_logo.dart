import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/images.dart';

class BuildLogo extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildLogo({required this.screenHeight,required this.screenWidth,});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight * 0.35,
      left: screenWidth * 0.17,
      child: Image.asset(
        kLOGO,
        width: screenWidth * 0.7,
        height: screenHeight * 0.25,
        fit: BoxFit.fill,
      ),
    );
  }
}
