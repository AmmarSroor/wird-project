import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
class BuildRamadanTitle extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildRamadanTitle({required this.screenHeight,required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight * 0.07,
      right: screenWidth * 0.2,
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: COMPETITIONS,
                style: TextStyle(
                  color: Color(HEX_LIGHT_BLUE_COLOR),
                  fontSize: screenWidth*0.14,
                ),
              ),
              TextSpan(
                text: WIRD,
                style: TextStyle(
                  color: Color(HEX_RED_COLOR),
                  fontSize: screenWidth*0.15,
                  fontWeight: FontWeight.bold
                ),
              ),

            ]
          ),
        ),
      ),
    );
  }
}
