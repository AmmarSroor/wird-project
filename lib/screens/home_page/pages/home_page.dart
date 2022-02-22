import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/cubit/home_page_cubit/home_page_cubit.dart';
import 'package:ramadan_cmpetitions/screens/home_page/widgets/build_advertisement_slider.dart';
import 'package:ramadan_cmpetitions/screens/home_page/widgets/build_sales.dart';

class HomePage extends StatelessWidget {
  static String routeName = 'HomePageRouteName';
  double? screenWidth;
  double? screenHeight;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: BlocConsumer<HomePageCubit, HomePageState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HomePageCubit.get(context);
          return Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Row(
                  //   mainAxisSize: MainAxisSize.min,
                  //   children: [
                  //     SizedBox(height:screenHeight!*0.075 ,),
                  //     Text(WELCOME,style: TextStyle(color: Color(HEX_ORANGE_COLOR),fontSize:screenWidth! *0.075 ,fontWeight: FontWeight.bold),),
                  //     SizedBox(width: 4,),
                  //     Text('سامي احمد',style: TextStyle(color: Color(HEX_BLUE_COLOR),fontSize:screenWidth! *0.075,fontWeight: FontWeight.bold),),
                  //   ],
                  // ),
                  // SizedBox(height:screenHeight!*0.015 ,),
                  // Text(QURAN_COMPETITION,style: TextStyle(color: Color(HEX_ORANGE_COLOR),fontSize:screenWidth! *0.075,fontWeight: FontWeight.bold),),
                  // SizedBox(height:screenHeight!*0.025 ,),
                  //Text(CENTER_ANNOUNCEMENTS,style: TextStyle(color: Color(HEX_BLUE_COLOR),fontSize:screenWidth! *0.05,fontWeight: FontWeight.bold),),
                  BuildAdvertisementSlider(advertisements: cubit.list,screenHeight: screenHeight!*0.5,screenWidth: screenWidth!*0.85),
                  SizedBox(
                    height: screenHeight! * 0.05,
                  ),
                  // Container(
                  //     decoration: BoxDecoration(
                  //       color: Color(HEX_LIGHT_WHITE_COLOR),
                  //       borderRadius: BorderRadius.circular(40),
                  //       border: Border.all(width: 1, color: Color(HEX_GREY_COLOR)),
                  //     ),
                  //     child: Padding(
                  //       padding: const EdgeInsets.fromLTRB(20.0,5.0,20.0,5.0),
                  //       child: Text(USER_RESULTS,style: TextStyle(color: Color(HEX_BLUE_COLOR),fontSize:screenWidth! *0.075,fontWeight: FontWeight.bold),),
                  //     ),
                  // ),
                  Text(USER_RESULTS,style: TextStyle(color: Color(HEX_BLUE_COLOR),fontSize:screenWidth! *0.075,fontWeight: FontWeight.bold),),
                  BuildResultsOfSomeDaysAsLineChart(
                    screenHeight: screenHeight! *0.4,
                    screenWidth:screenWidth! *0.85 ,
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

