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

// Haha code dup with AverageStatCard go brrrrr
class _CityAverageBarChartState extends State<CityAverageBarChart>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void initState() {
    super.initState();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) => FadeTransition(
      opacity: Tween<double>(begin: 0, end: 1).animate(_animation),
      child: _getCityAverageBarChart());

  SfCartesianChart _getCityAverageBarChart() {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      title: ChartTitle(
          text: widget.chartTitle,
          textStyle: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)),
      legend: Legend(
          isVisible: true,
          textStyle: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white)),
      primaryXAxis: CategoryAxis(
        majorGridLines: MajorGridLines(width: 0, color: Colors.white),
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white)
      ),
      primaryYAxis: NumericAxis(
          labelStyle: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white),
          majorGridLines: MajorGridLines(width: 0, color: Colors.white),
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

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
