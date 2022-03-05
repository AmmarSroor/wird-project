import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ramadan_cmpetitions/core/models/result_item_model.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/cubit/home_page_cubit/home_page_cubit.dart';
import 'package:ramadan_cmpetitions/screens/home_page/widgets/build_bar_charts.dart';
import 'package:ramadan_cmpetitions/screens/home_page/widgets/build_ramadan_day_label.dart';
import 'package:ramadan_cmpetitions/screens/home_page/widgets/build_result_card.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_drop_down_competition_list.dart';

class ResultsPage extends StatelessWidget {
  static String routeName = 'ViewPreviousDataPageRouteName';
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
            return Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: screenHeight! * 0.05,
                          ),
                          DropDownCompetitionList(
                            screenWidth: screenWidth! * 0.7,
                            color: HEX_BLUE_COLOR,
                            select: SELECT_DAY_FROM_RAMADAN,
                            screenHeight: screenHeight!,
                          ),
                          BuildResultsOfDayAsBarChart(
                            screenHeight: screenHeight! * 0.27,
                            screenWidth: screenWidth! * 0.8,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth! * 0.05, vertical: screenHeight! * 0.001),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // build Ramadan day number
                                BuildRamadanDayLabel(screenHeight: screenHeight!,screenWidth: screenWidth!,),
                                SizedBox(
                                  width: screenWidth! * 0.01,
                                ),
                                // build list of cards
                                Container(
                                  width: screenWidth! * 0.75,
                                  child: Column(
                                    children: [
                                      ...HomePageCubit.get(context).results.map((item) =>
                                          BuildResultCard(
                                        screenWidth: screenWidth,
                                        screenHeight: screenHeight,
                                        title: item.title,
                                        points: item.number * item.forPoint,
                                        number: item.number,
                                        forPoint: item.forPoint,
                                      ),).toList(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ));
          },
        ));
  }
}
