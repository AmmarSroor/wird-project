import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/cubit/home_page_cubit/home_page_cubit.dart';

class BuildRamadanDayLabel extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  BuildRamadanDayLabel({required this.screenWidth,required this.screenHeight,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.14,
      height: screenHeight * 0.15,
      child: Column(
        children: [
          Text(
            '${HomePageCubit.get(context).dropDownValue}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: screenWidth * 0.07,
              color: Color(HEX_BLUE_COLOR),
            ),
          ),
          Text(FROM_RAMADAN,
              style: TextStyle(
                  fontSize: screenWidth * 0.04,
                  color: Color(HEX_RED_COLOR),
                  fontWeight: FontWeight.bold)),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.002),
            width: double.infinity,
            height: screenHeight * 0.008,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    colors: [
                      Color(HEX_BLUE_COLOR),
                      Color(HEX_RED_COLOR),
                    ]
                )
            ),
          ),
        ],
      ),
    );
  }
}
