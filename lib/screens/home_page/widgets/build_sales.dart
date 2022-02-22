import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class BuildResultsOfSomeDaysAsLineChart extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildResultsOfSomeDaysAsLineChart({
    required this.screenHeight,
    required this.screenWidth,
  });
  final lineSalesData = [
      new ResultOfDay(1, 36),
      new ResultOfDay(2, 95),
      new ResultOfDay(3, 45),
      new ResultOfDay(4, 40),
      new ResultOfDay(5, 30),
      new ResultOfDay(6, 30),
  ];
  @override
  Widget build(BuildContext context) {
    final List<charts.Series<ResultOfDay, int>>  seriesLineData = [
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: 'Air Pollution',
        data: lineSalesData,
        domainFn: (ResultOfDay sales, _) => sales.day,
        measureFn: (ResultOfDay sales, _) => sales.points,
      ),
    ];
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: screenWidth,
        height: screenHeight,
        child: charts.LineChart(
            seriesLineData,
            defaultRenderer: new charts.LineRendererConfig(
              stacked: true,
              includePoints:true,
              radiusPx:3.5,
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