import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

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
      label: "الأذكار",
      points: 100,
      barColor: charts.ColorUtil.fromDartColor(Color(HEX_ORANGE_COLOR)),
    ),

  ];

  BuildResultsOfDayAsBarChart({
    required this.screenHeight,
    required this.screenWidth,
  });

  // @override
  // Widget build(BuildContext context) {
  //   List<charts.Series<TodayResultsSeries, String>> series = [
  //     charts.Series(
  //       id: "Subscribers",
  //       data: data,
  //       domainFn: (TodayResultsSeries series, _) => series.label,
  //       measureFn: (TodayResultsSeries series, _) => series.points,
  //       colorFn: (TodayResultsSeries series, _) => series.barColor,
  //
  //     ),
  //   ];
  //   return Container(
  //     width: screenWidth,
  //     height: screenHeight,
  //     child: charts.PieChart(
  //       series,
  //       defaultRenderer: charts.ArcRendererConfig(
  //         arcRendererDecorators: [
  //           charts.ArcLabelDecorator<Object>(
  //             labelPosition: charts.ArcLabelPosition.auto,
  //             outsideLabelStyleSpec: charts.TextStyleSpec(
  //               color: charts.Color.fromHex(code: HEX_ORANGE_COLOR.toString()),
  //               fontSize:15,
  //               lineHeight: 1,
  //             ),
  //             insideLabelStyleSpec: charts.TextStyleSpec(
  //               //color: charts.Color.fromHex(code: HEX_LIGHT_WHITE_COLOR.toString()),
  //               fontSize:12,
  //               lineHeight: 1,
  //             ),
  //           ),
  //         ],
  //       ),
  //       animate: true,
  //     ),
  //   );
  // }

  Widget build(BuildContext context) {
    return Center(
        child:SfCircularChart(
          margin: EdgeInsets.all(1),
            title: ChartTitle(
              text: 'نتائج 8 من رمضان',
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
