import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/blocs/CityBloc.dart';
import 'package:hacktues_gg_app/blocs/CityPreviousStatisticsBloc.dart';
import 'package:hacktues_gg_app/model/City.dart';
import 'package:hacktues_gg_app/state/ResponseState.dart';
import 'package:hacktues_gg_app/widgets/Endgame.dart';
import 'package:hacktues_gg_app/widgets/Error.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../base/CityScreen.dart';
import 'GraphicType.dart';

class StatsScreen extends CityScreen<City?, CityBloc> {
  final double max, min, interval;
  final GraphicType graphicType;
  final CityPreviousStatisticsBloc _previousStatisticsBloc;

  StatsScreen(this._previousStatisticsBloc,
      {required String errorText,
      required this.max,
      required this.min,
      required this.interval,
      required this.graphicType})
      : super(onErrorText: errorText);

  @override
  Widget buildOnCityFetched(context, City? city) {
    if (city != null) {
      _previousStatisticsBloc.sendEvent(city);
      return Expanded(child: _getDefaultLineChart(city));
    } else {
      return Endgame();
    }
  }

  Widget _getDefaultLineChart(City city) {
    try {
      return SfCartesianChart(
        backgroundColor: Colors.black,
        plotAreaBorderWidth: 0,
        primaryXAxis: DateTimeAxis(
            intervalType: DateTimeIntervalType.minutes,
            labelStyle: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
            majorGridLines: MajorGridLines(width: 0)),
        primaryYAxis: NumericAxis(
            rangePadding: ChartRangePadding.none,
            minimum: min,
            maximum: max,
            interval: interval,
            labelStyle: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
            axisLine: AxisLine(width: 0),
            majorTickLines: MajorTickLines(size: 0)),
        series: _getDefaultLineSeries(city),
        trackballBehavior: TrackballBehavior(
            enable: true,
            lineColor: Color.fromRGBO(255, 255, 255, 0.03),
            lineWidth: 15,
            activationMode: ActivationMode.singleTap,
            markerSettings: TrackballMarkerSettings(
                borderWidth: 4,
                height: 10,
                width: 10,
                markerVisibility: TrackballVisibilityMode.visible)),
        zoomPanBehavior: ZoomPanBehavior(
            enablePinching: true,
            enableSelectionZooming: true,
            enablePanning: true),
      );
    } on Exception catch (e) {
      return Error(error: 'Error while loading previous stats!');
    }
  }

  SplineSeries<City, DateTime> _getDefaultLineSeries(City city) {
    late List<City>? cities;
    ResponseState<List<City>?>? currentState =
        this._previousStatisticsBloc.value;

    if (currentState != null) {
      currentState.when((value) {
        cities = value ?? [city];
      },
          idle: () {},
          loading: () => {},
          error: (exc) =>
              throw exc ?? Exception('Error while loading previous stats!'));
    } else {
      cities = [city];
    }

    return SplineSeries<City, DateTime>(
        dataSource: cities,
        xValueMapper: (model, _) => DateTime.parse(model.updated_at),
        yValueMapper: (model, _) {
          switch (this.graphicType) {
            case GraphicType.BuildingCount:
              return model.building_count;
            case GraphicType.Money:
              return model.money;
            case GraphicType.Pollution:
              return model.pollution;
            default:
              return 0.0;
          }
        },
        color: Colors.lightBlueAccent);
  }
}
