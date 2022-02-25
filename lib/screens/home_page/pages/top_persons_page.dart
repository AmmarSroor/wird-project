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
            children: [
              SizedBox(height: screenHeight!*0.02,),
              Text(TOP_OF_POINT,
                style: TextStyle(
                    color: Color(HEX_ORANGE_COLOR),
                    fontSize:screenWidth!*0.1,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: screenHeight!*0.01,),
              Container(
                height: screenHeight!*0.6,
                width: screenWidth!*0.75,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => BuildTopPoint(screenHeight:screenHeight!,screenWidth:screenWidth!),
                  separatorBuilder: (context, index) => SizedBox(height: screenHeight!*0.02,),
                  itemCount: 3,
                ),
              ),
            ],
          ),
      ),
    );
  }

}

