import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_divider.dart';

class BuildRamadanMubarakMessage extends StatelessWidget {
  final double screenWidth;
  BuildRamadanMubarakMessage({required this.screenWidth});
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
              color: Color(HEX_GREY_COLOR)
          ),
        ),
        BuildDivider(screenWidth: screenWidth,),
      ],
    );
  }
}
