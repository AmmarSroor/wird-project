import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
class BuildRamadanTitle extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildRamadanTitle({required this.screenHeight,required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight * 0.07,
      child: Center(
        child: Container(
          width: screenWidth,
          height: screenHeight*0.1,
          color: Colors.white.withOpacity(0.2),
          child: Text(
            RAMADAN_COMPETITIONS,
            style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: screenWidth*0.12,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
