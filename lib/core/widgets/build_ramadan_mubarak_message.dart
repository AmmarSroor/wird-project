import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_divider.dart';

class BuildRamadanMubarakMessage extends StatelessWidget {
  final double screenWidth;
  final int hexColor;
  BuildRamadanMubarakMessage({required this.screenWidth,required this.hexColor});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BuildDivider(screenWidth: screenWidth,),
        Text(
          RAMADAN_MUBARAK,
          style: TextStyle(
            color: Color(hexColor),
            fontSize: screenWidth * 0.05,
            fontWeight: FontWeight.bold,
          ),
        ),
        BuildDivider(screenWidth: screenWidth,),
      ],
    );
  }
}
