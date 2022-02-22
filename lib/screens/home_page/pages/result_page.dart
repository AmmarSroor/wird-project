import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/screens/home_page/widgets/build_bar_charts.dart';
import 'package:ramadan_cmpetitions/screens/login_and_register/widgets/build_drop_down_competition_list.dart';

class ResultsPage extends StatelessWidget {
  static String routeName = 'ViewPreviousDataPageRouteName';
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
              SizedBox(height:screenHeight!*0.025 ,),
              Text(TODAY_IS_RAMADAN,style: TextStyle(color: Color(HEX_BLUE_COLOR),fontSize:screenWidth! *0.075,fontWeight: FontWeight.bold),),
              SizedBox(height:screenHeight!*0.025 ,),
              DropDownCompetitionList(screenWidth:screenWidth!*0.6,select:CHOOSE_DAY,color: HEX_BLUE_COLOR,),
              SizedBox(height:screenHeight!*0.025 ,),
              BuildResultsOfDayAsBarChart(
                screenHeight: screenHeight! *0.3,
                screenWidth:screenWidth! *0.95 ,
              ),
            ],
          )
      )
    );
  }

}