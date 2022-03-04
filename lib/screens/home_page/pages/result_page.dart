import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/screens/home_page/widgets/build_bar_charts.dart';
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
        body: Center(
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
                        Container(
                          width: screenWidth! * 0.14,
                          height: screenHeight! * 0.15,
                          child: Column(
                            children: [
                              Text(
                                '8',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth! * 0.07,
                                  color: Color(HEX_BLUE_COLOR),
                                ),
                              ),
                              Text(FROM_RAMADAN,
                                  style: TextStyle(
                                      fontSize: screenWidth! * 0.04,
                                      color: Color(HEX_RED_COLOR),
                                      fontWeight: FontWeight.bold)),
                              Container(
                                margin: EdgeInsets.only(top: screenHeight! * 0.002),
                                width: double.infinity,
                                height: screenHeight! * 0.008,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  //color: Color(HEX_BLUE_COLOR),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(HEX_BLUE_COLOR),
                                      Color(HEX_RED_COLOR),
                                    ]
                                  )
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: screenWidth! * 0.01,
                        ),
                        // build list of cards
                        Container(
                          width: screenWidth! * 0.75,
                          child: Column(
                            children: [
                              BuildResultCard(
                                screenWidth: screenWidth,
                                screenHeight: screenHeight,
                                title: 'قراءة القرآن',
                                subTitle1: 'عدد النقاط',
                                result1: '35',
                                subTitle2: 'عدد الصفحات',
                                result2: '15',
                                subTitle3: 'المعيار',
                                result3: 'نقطتين لكل صفحة',
                              ),
                              BuildResultCard(
                                screenWidth: screenWidth,
                                screenHeight: screenHeight,
                                title: 'قراءة كتاب',
                                subTitle1: 'عدد النقاط',
                                result1: '10',
                                subTitle2: 'عدد الصفحات',
                                result2: '20',
                                subTitle3: 'المعيار',
                                result3: 'نقطة لكل صفحة',
                              ),
                              BuildResultCard(
                                screenWidth: screenWidth,
                                screenHeight: screenHeight,
                                title: 'قيام الليل',
                                subTitle1: 'عدد النقاط',
                                result1: '55',
                                subTitle2: 'عدد الركعات',
                                result2: '8',
                                subTitle3: 'المعيار',
                                result3: '3 نقاط لكل ركعة',
                              ),
                              BuildResultCard(
                                screenWidth: screenWidth,
                                screenHeight: screenHeight,
                                title: 'الصلاة جماعة',
                                subTitle1: 'عدد النقاط',
                                result1: '40',
                                subTitle2: 'عدد الصلاوات',
                                result2: '4',
                                subTitle3: 'المعيار',
                                result3: '10 نقاط لكل صلاة',
                              ),
                              BuildResultCard(
                                screenWidth: screenWidth,
                                screenHeight: screenHeight,
                                title: 'الصلاة على النبي',
                                subTitle1: 'عدد النقاط',
                                result1: '1000',
                                subTitle2: 'عدد الصلاوات',
                                result2: '1000',
                                subTitle3: 'المعيار',
                                result3: 'نقطة لكل صلاة',
                              ),
                              BuildResultCard(
                                screenWidth: screenWidth,
                                screenHeight: screenHeight,
                                title: 'مشاهدة فيديو وثائقي',
                                subTitle1: 'عدد النقاط',
                                result1: '50',
                                subTitle2: 'عدد الحلقات',
                                result2: '2',
                                subTitle3: 'المعيار',
                                result3: '25 نقطة لكل حلقة',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
