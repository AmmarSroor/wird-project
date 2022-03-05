import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';

class BuildResultCard extends StatelessWidget {
  final double? screenHeight;
  final double? screenWidth;
  final String title;
  final int points;
  final int number;
  final int forPoint;
  BuildResultCard({
    required this.screenHeight,
    required this.screenWidth,
    required this.title,
    required this.points,
    required this.number,
    required this.forPoint,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      margin: EdgeInsets.only(
          bottom: screenHeight! * 0.02, top: screenHeight! * 0.008),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Slidable(
        startActionPane: buildActionPane(),
        child: Builder(
          builder: (ctx) {
            return InkWell(
              onTap: (){
                final slidable = Slidable.of(ctx)!;
                slidable.openStartActionPane();
              },
              child: Container(
                width: screenWidth! * 0.7,
                height: screenHeight! * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: screenWidth!*0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  NUMBERS,
                                  style: TextStyle(
                                    fontSize: screenWidth!*0.035,
                                    color: Color(HEX_BLUE_COLOR),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '$number',
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
                                  STANDARD,
                                  style: TextStyle(
                                    fontSize: screenWidth!*0.035,
                                    color: Color(HEX_BLUE_COLOR),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  getTitle(forPoint),
                                  style: TextStyle(
                                    fontSize: screenWidth!*0.03,
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
                                  SUM,
                                  style: TextStyle(
                                    fontSize: screenWidth!*0.035,
                                    color: Color(HEX_BLUE_COLOR),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '$points نقطة',
                                  style: TextStyle(
                                    fontSize: screenWidth!*0.035,
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
        ),
      ),
    );
  }

  ActionPane buildActionPane() {
    return ActionPane(
        children: [
          SlidableAction(
            onPressed: (_){

            },
            backgroundColor: Color(HEX_RED_COLOR),
            foregroundColor: Colors.white,
            label: 'تعديل',
          ),
        ],
        extentRatio: 0.3,
        motion: StretchMotion(),
      );
  }
  String getTitle(int forPoint){
    String word;
    switch(forPoint){
      case 1:
        word = 'نقطة';
        break;
      case 2:
        word = 'نقطتين';
        break;
      default:
        if(forPoint < 11)
          word = '$forPoint نقاط';
        else
          word = '$forPoint نقطة';
    }
    return '$word لكل صفحة';
  }
}
