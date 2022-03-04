import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BuildResultsOfSomeDaysAsLineChart extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildResultsOfSomeDaysAsLineChart({
    required this.screenHeight,
    required this.screenWidth,
  });

  List<ResultOfDay> resultOfDay=[
    ResultOfDay(points: 10,day: "1"),
    ResultOfDay(points: 50,day: "2"),
    ResultOfDay(points: 30,day: "3"),
    ResultOfDay(points: 100,day:"4"),
    ResultOfDay(points: 20,day: "5"),
    ResultOfDay(points: 70,day: "6"),
  ];
  TrackballBehavior trackballBehavior= TrackballBehavior(enable: true, activationMode: ActivationMode.singleTap);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: screenWidth,
        height: screenHeight,
        child: SfCartesianChart(
          // plotAreaBorderWidth: 0,
           title: ChartTitle(text: LAST_6_DAYS,textStyle: TextStyle(color: Color(HEX_BLUE_COLOR),fontSize:screenWidth *0.05,fontWeight: FontWeight.bold)),
          // legend: Legend(isVisible: true),
          series:<ChartSeries>[
            StackedLineSeries<ResultOfDay,String>(
              dataSource:resultOfDay,
              xValueMapper: (ResultOfDay xData,_)=>xData.day,
              yValueMapper: (ResultOfDay xData,_)=>xData.points,
              markerSettings:MarkerSettings(isVisible: true,)
            )
          ],
          primaryXAxis: CategoryAxis(),
          primaryYAxis: NumericAxis(),
          trackballBehavior: trackballBehavior,
        ),
      ),
    );
  }
}

class ResultOfDay {
  final String day;
  final int points;
  ResultOfDay({required this.day, required this.points});
}