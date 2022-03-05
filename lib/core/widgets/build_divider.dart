import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';

class BuildDivider extends StatelessWidget {
  final double screenWidth;
  BuildDivider({required this.screenWidth});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.only(left: screenWidth * 0.05, right: screenWidth * 0.05),
          child: Divider(
            color: Color(HEX_GREY_COLOR),
            height: 36,
          )),
    );
  }
}
