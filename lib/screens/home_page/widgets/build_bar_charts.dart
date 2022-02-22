import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:ramadan_cmpetitions/core/resources/colors.dart';

class BuildResultsOfDayAsBarChart extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final List<TodayResultsSeries> data = [
    TodayResultsSeries(
      label: "الصلاة",
      points: 80,
      barColor: charts.ColorUtil.fromDartColor(Color(HEX_ORANGE_COLOR)),
    ),
    TodayResultsSeries(
      label: "قيام الليل",
      points: 70,
      barColor: charts.ColorUtil.fromDartColor(Color(HEX_ORANGE_COLOR)),
    ),
    TodayResultsSeries(
      label: "قراءةالقرآن",
      points: 90,
      barColor: charts.ColorUtil.fromDartColor(Color(HEX_ORANGE_COLOR)),
    ),
    TodayResultsSeries(
      label: "الأذكار",
      points: 100,
      barColor: charts.ColorUtil.fromDartColor(Color(HEX_ORANGE_COLOR)),
    ),
    TodayResultsSeries(
      label: "غسل الجمعة",
      points: 40,
      barColor: charts.ColorUtil.fromDartColor(Color(HEX_ORANGE_COLOR)),
    ),
  ];
  BuildResultsOfDayAsBarChart({
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    List<charts.Series<TodayResultsSeries, String>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          domainFn: (TodayResultsSeries series, _) => series.label,
          measureFn: (TodayResultsSeries series, _) => series.points,
          colorFn: (TodayResultsSeries series, _) => series.barColor
      ),
    ];
    return Container(
      width: screenWidth,
      height: screenHeight,
      child: charts.BarChart(
        series,
        animate: true,
      ),
    );
  }
}

class TodayResultsSeries {
  final String label;
  final int points;
  final charts.Color barColor;
  TodayResultsSeries({
    required this.label,
    required this.points,
    required this.barColor
  });
}