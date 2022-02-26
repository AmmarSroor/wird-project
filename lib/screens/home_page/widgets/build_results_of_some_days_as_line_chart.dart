import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:ramadan_cmpetitions/core/resources/colors.dart';

class BuildResultsOfSomeDaysAsLineChart extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildResultsOfSomeDaysAsLineChart({
    required this.screenHeight,
    required this.screenWidth,
  });
  final lineSalesData = [
    new ResultOfDay(1, 10),
    new ResultOfDay(2, 80),
    new ResultOfDay(3, 45),
    new ResultOfDay(4, 30),
    new ResultOfDay(5, 100),
    new ResultOfDay(6, 70),
  ];
  @override
  Widget build(BuildContext context) {
    final List<charts.Series<ResultOfDay, int>>  seriesLineData = [
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(HEX_ORANGE_COLOR)),
        id: 'Air Pollution',
        data: lineSalesData,
        domainFn: (ResultOfDay sales, _) => sales.day,
        measureFn: (ResultOfDay sales, _) => sales.points,
      ),
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: screenWidth,
        height: screenHeight,
        child: charts.LineChart(
            seriesLineData,
            defaultRenderer: new charts.LineRendererConfig(
              stacked: true,
              includePoints:true,
              areaOpacity: 0.5,
              radiusPx:5.5,
            ),
            animate: true,
            animationDuration: Duration(seconds: 1),
        ),
      ),
    );
  }
}

class ResultOfDay {
  final int day;
  final int points;
  ResultOfDay(this.day, this.points);
}