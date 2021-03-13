import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// Not the cleanest solution but should work
class CityAverageBarChart extends StatefulWidget {
  final String chartTitle;
  final double cityAggregatedAmount;
  final double globalAggregatedAmount;

  const CityAverageBarChart(
      {Key? key,
      required this.chartTitle,
      required this.cityAggregatedAmount,
      required this.globalAggregatedAmount})
      : super(key: key);

  @override
  _CityAverageBarChartState createState() => _CityAverageBarChartState();
}

class _CityAverageBarChartState extends State<CityAverageBarChart> {
  @override
  Widget build(BuildContext context) => _getCityAverageBarChart();

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
  List<ColumnSeries<double, String>> _getCityAverageBarChartSeries() =>
      <ColumnSeries<double, String>>[
        ColumnSeries(
            dataSource: [widget.cityAggregatedAmount],
            xValueMapper: (_, __) => widget.chartTitle,
            yValueMapper: (city, __) => city,
            name: 'You'),
        ColumnSeries(
            dataSource: [widget.globalAggregatedAmount],
            xValueMapper: (_, __) => widget.chartTitle,
            yValueMapper: (global, __) => global,
            name: 'Global'),
      ];
}
