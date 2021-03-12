import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/model/CityAverage.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CityAverageBarChart extends StatefulWidget {
  final String chartTitle;
  final City city;
  final CityAverage glocalCityAverage;

  const CityAverageBarChart({Key key, this.chartTitle,
    this.city, this.globalCityAverage}) : super(key: key);

  @override
  _CityAverageBarChartState createState() => _CityAverageBarChartState();
}

class _CityAverageBarChartState extends State<CityAverageBarChart> {
  @override
  Widget build(BuildContext context) {
    return _getCityAverageBarChart();
  }

  SfCartesianChart _getCityAverageBarChart() {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      title: ChartTitle(text: widget.chartTitle),
      legend: Legend(isVisible: true),
      primaryXAxis: CategoryAxis(
        majorGridLines: MajorGridLines(width: 0),
      ),
      primaryYAxis: NumericAxis(
          majorGridLines: MajorGridLines(width: 0),
          numberFormat: NumberFormat.compact()),
      series: _getCityAverageBarChartSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  /// Returns the list of chart series which need to render on the barchart.
  List<BarSeries<CityAverage, String>> _getCityAverageBarChartSeries() {
    final List<CityAverage> chartData = <CityAverage>[
      // ChartSampleData(
      //     x: 'France',
      //     y: 84452000,
      //     secondSeriesYValue: 82682000,
      //     thirdSeriesYValue: 86861000),
      // ChartSampleData(
      //     x: 'Spain',
      //     y: 68175000,
      //     secondSeriesYValue: 75315000,
      //     thirdSeriesYValue: 81786000),
      // ChartSampleData(
      //     x: 'US',
      //     y: 77774000,
      //     secondSeriesYValue: 76407000,
      //     thirdSeriesYValue: 76941000),
      // ChartSampleData(
      //     x: 'Italy',
      //     y: 50732000,
      //     secondSeriesYValue: 52372000,
      //     thirdSeriesYValue: 58253000),
      // ChartSampleData(
      //     x: 'Mexico',
      //     y: 32093000,
      //     secondSeriesYValue: 35079000,
      //     thirdSeriesYValue: 39291000),
      // ChartSampleData(
      //     x: 'UK',
      //     y: 34436000,
      //     secondSeriesYValue: 35814000,
      //     thirdSeriesYValue: 37651000),
    ];
    return <BarSeries<double, String>>[
      // BarSeries<ChartSampleData, String>(
      //     dataSource: chartData,
      //     xValueMapper: (ChartSampleData sales, _) => sales.x,
      //     yValueMapper: (ChartSampleData sales, _) => sales.y,
      //     name: '2015'),
      // BarSeries<ChartSampleData, String>(
      //     dataSource: chartData,
      //     xValueMapper: (ChartSampleData sales, _) => sales.x,
      //     yValueMapper: (ChartSampleData sales, _) => sales.secondSeriesYValue,
      //     name: '2016'),
      // BarSeries<ChartSampleData, String>(
      //     dataSource: chartData,
      //     xValueMapper: (ChartSampleData sales, _) => sales.x,
      //     yValueMapper: (ChartSampleData sales, _) => sales.thirdSeriesYValue,
      //     name: '2017')
    ];
  }
}
