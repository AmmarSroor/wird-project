
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 17.0),
              child: CircleAvatar(
                  radius: screenWidth*0.15,
                  child: ClipOval(
                    child: Image.network(
                      'https://i.pinimg.com/originals/43/1a/d9/431ad97801a6a1a4b127007b92acdd01.jpg',
                      width: screenWidth * 0.35,
                      height: screenHeight * 0.35,
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            Text('Sami Ahmad',
              style: TextStyle(
                  color: Color(HEX_ORANGE_COLOR),
                  fontSize:screenWidth*0.05,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(NUMBER_OF_POINTS,
              style: TextStyle(
                  color: Color(HEX_BLUE_COLOR),
                  fontSize:screenWidth*0.05,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text('20',
              style: TextStyle(
                  color: Color(HEX_ORANGE_COLOR),
                  fontSize:screenWidth*0.05,
                  fontWeight: FontWeight.bold
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(HEX_BLUE_COLOR),
                borderRadius: BorderRadius.all(Radius.circular(13.0)),
              ),
              height: screenHeight*0.08,
              child: Center(
                child:Text('المركز الاول',
                  style: TextStyle(
                      color: Color(HEX_LIGHT_WHITE_COLOR),
                      fontSize:screenWidth*0.05,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
          ],
        ),
      );
  }
}