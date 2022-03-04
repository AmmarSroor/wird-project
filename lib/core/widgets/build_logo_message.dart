import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/images.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_divider.dart';
import 'package:ramadan_cmpetitions/screens/start_up/widgets/build_logo.dart';

class BuildLogoMessage extends StatelessWidget {
  final double screenWidth;
  BuildLogoMessage({required this.screenWidth});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BuildDivider(screenWidth: screenWidth,),
        Image.asset(kLOGO,width: 35,height: 45,fit: BoxFit.fill,),
        BuildDivider(screenWidth: screenWidth,),
      ],
    );
  }
}
