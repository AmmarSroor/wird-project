import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/cubit/home_page_cubit/home_page_cubit.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BuildResultsOfDayAsBarChart extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final List<TodayResultsSeries> data = [
    TodayResultsSeries(
      label: "الصلاة",
      points: 80,
      barColor: charts.ColorUtil.fromDartColor(Color(HEX_RED_COLOR)),
    ),
    TodayResultsSeries(
      label: "قيام الليل",
      points: 70,
      barColor: charts.ColorUtil.fromDartColor(Color(HEX_RED_COLOR)),
    ),
    TodayResultsSeries(
      label: "قراءةالقرآن",
      points: 90,
      barColor: charts.ColorUtil.fromDartColor(Color(HEX_RED_COLOR)),
    ),
    TodayResultsSeries(
      label: "الأذكار",
      points: 100,
      barColor: charts.ColorUtil.fromDartColor(Color(HEX_RED_COLOR)),
    ),
    TodayResultsSeries(
      label: "قراءةالقرآن",
      points: 90,
      barColor: charts.ColorUtil.fromDartColor(Color(HEX_RED_COLOR)),
    ),
    TodayResultsSeries(
      label: "الأذكار",
      points: 100,
      barColor: charts.ColorUtil.fromDartColor(Color(HEX_RED_COLOR)),
    ),
    TodayResultsSeries(
      label: "الأذكار",
      points: 100,
      barColor: charts.ColorUtil.fromDartColor(Color(HEX_RED_COLOR)),
    ),

  ];

  BuildResultsOfDayAsBarChart({
    required this.screenHeight,
    required this.screenWidth,
  });

  Widget build(BuildContext context) {
    return Center(
        child:SfCircularChart(
          margin: EdgeInsets.all(1),
            title: ChartTitle(
              text: 'نتائج ${HomePageCubit.get(context).dropDownValue} من رمضان',
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.055,
                color: Color(HEX_BLUE_COLOR),
              ),
            ),
            legend: Legend(isVisible: true),
            series: <PieSeries<TodayResultsSeries, String>>[
              PieSeries<TodayResultsSeries, String>(
                  explode: true,
                  explodeIndex: 0,
                  dataSource: data,
                  xValueMapper: (TodayResultsSeries data, _) => data.label,
                  yValueMapper: (TodayResultsSeries data, _) => data.points,
                  dataLabelMapper: (TodayResultsSeries data, _) => data.label,
                  dataLabelSettings: DataLabelSettings(isVisible: true,),
              ),
            ]
        )
    );
  }
}

class TodayResultsSeries {
  final String label;
  final int points;
  final charts.Color barColor;

  TodayResultsSeries(
      {required this.label, required this.points, required this.barColor});
}
