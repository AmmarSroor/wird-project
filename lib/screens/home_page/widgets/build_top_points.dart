
import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';

class BuildTopPoint extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildTopPoint({
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color:Color(HEX_BLUE_COLOR),width: 3),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        height: screenHeight*0.45,
        width: screenWidth*0.75,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top:screenHeight*0.04,
              child: CircleAvatar(
                  radius: screenWidth*0.15,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/profile_image_test.PNG',
                      width: screenWidth * 0.35,
                      height: screenHeight * 0.35,
                      fit: BoxFit.fill,
                    ),
                  )),
            ),
            Positioned(
              top:screenHeight*0.23,
              child: Text('Ammar Abu Srour',
                style: TextStyle(
                    color: Color(HEX_ORANGE_COLOR),
                    fontSize:screenWidth*0.05,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Positioned(
              top: screenHeight*0.28,
              child: Text(NUMBER_OF_POINTS,
                style: TextStyle(
                    color: Color(HEX_BLUE_COLOR),
                    fontSize:screenWidth*0.05,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Positioned(
              top:screenHeight*0.32,
              child: Text('20',
                style: TextStyle(
                    color: Color(HEX_ORANGE_COLOR),
                    fontSize:screenWidth*0.05,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(HEX_BLUE_COLOR),
                  borderRadius: BorderRadius.all(Radius.circular(13.0)),
                ),
                height: screenHeight*0.08,
                width: screenWidth*0.75,
                child: Center(
                  child:Text('المركز الاول',
                    style: TextStyle(
                        color: Color(HEX_LIGHT_WHITE_COLOR),
                        fontSize:screenWidth*0.05,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}