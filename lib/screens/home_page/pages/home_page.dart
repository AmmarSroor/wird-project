import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/cubit/home_page_cubit/home_page_cubit.dart';
import 'package:ramadan_cmpetitions/screens/home_page/widgets/build_advertisement_slider.dart';
import 'package:ramadan_cmpetitions/screens/home_page/widgets/build_results_of_some_days_as_line_chart.dart';

class HomePage extends StatelessWidget {
  static String routeName = 'HomePageRouteName';
  double? screenWidth;
  double? screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: BlocConsumer<HomePageCubit, HomePageState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  BuildAdvertisementSlider(screenHeight: screenHeight!*0.5,screenWidth: screenWidth!*0.85),
                  BuildResultsOfSomeDaysAsLineChart(
                    screenHeight: screenHeight! *0.35,
                    screenWidth:screenWidth! *0.8 ,
                  ),
                  Text(LAST_6_DAYS,style: TextStyle(color: Color(HEX_BLUE_COLOR),fontSize:screenWidth! *0.05,fontWeight: FontWeight.bold),),
                  SizedBox(height:screenHeight!*0.025 ,),
                ],
              ),
            ),
          );
        },
      )
    );
  }
}

