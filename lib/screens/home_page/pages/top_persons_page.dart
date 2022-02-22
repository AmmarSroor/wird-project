import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/screens/home_page/widgets/build_top_points.dart';

class TopThreePersonPage extends StatelessWidget {
  static String routeName = 'TopPageRouteName';
  double? screenWidth;
  double? screenHeight;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight!*0.05,),
              Text(TOP_OF_POINT,
                style: TextStyle(
                    color: Color(HEX_ORANGE_COLOR),
                    fontSize:screenWidth!*0.1,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: screenHeight!*0.05,),
              Container(
                height: screenHeight!*0.50,
                width: screenWidth!*0.75,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => BuildTopPoint(screenHeight:screenHeight!,screenWidth:screenWidth!),
                  separatorBuilder: (context, index) => SizedBox(width: 20,),
                  itemCount: 3,
                ),
              ),
            ],
          )),
    );
  }

}

