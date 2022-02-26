import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';

class BuildResultCard extends StatelessWidget {
  final double? screenHeight;
  final double? screenWidth;
  final String title;
  final String subTitle1;
  final String result1;
  final String subTitle2;
  final String result2;
  final String subTitle3;
  final String result3;
  BuildResultCard({
    required this.screenHeight,
    required this.screenWidth,
    required this.title,
    required this.subTitle1,
    required this.subTitle2,
    required this.subTitle3,
    required this.result1,
    required this.result2,
    required this.result3,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      margin: EdgeInsets.only(
          bottom: screenHeight! * 0.02, top: screenHeight! * 0.008),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: screenWidth! * 0.7,
        height: screenHeight! * 0.1,
        child: Row(
          children: [
            Container(
              width: screenWidth! * 0.18,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Color(HEX_BLUE_COLOR),
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(3),
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: screenWidth! * 0.04,
                            color: Color(HEX_LIGHT_WHITE_COLOR),
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: screenWidth! * 0.45,
              height: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth!*0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          subTitle1,
                          style: TextStyle(
                            fontSize: screenWidth!*0.035,
                            color: Color(HEX_BLUE_COLOR),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          result1,
                          style: TextStyle(
                            fontSize: screenWidth!*0.035,
                            color: Color(HEX_BLUE_COLOR),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth!*0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          subTitle2,
                          style: TextStyle(
                            fontSize: screenWidth!*0.035,
                            color: Color(HEX_BLUE_COLOR),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          result2,
                          style: TextStyle(
                            fontSize: screenWidth!*0.035,
                            color: Color(HEX_BLUE_COLOR),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: screenWidth!*0.04, left: screenWidth!*0.001),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          subTitle3,
                          style: TextStyle(
                            fontSize: screenWidth!*0.035,
                            color: Color(HEX_BLUE_COLOR),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          result3,
                          style: TextStyle(
                            fontSize: screenWidth!*0.03,
                            color: Color(HEX_BLUE_COLOR),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
