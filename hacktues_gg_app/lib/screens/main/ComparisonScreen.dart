// part of AverageStatsScreen 2-panel pageview for stats

import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/blocs/AverageCityBloc.dart';
import 'package:hacktues_gg_app/model/CityAverage.dart';

import 'CityScreen.dart';

class ComparisonScreen extends CityScreen<CityAverage, CityAverageBloc> {
  ComparisonScreen({required String errorText}) : super(onErrorText: errorText);

  @override
  Widget buildOnCityFetched(CityAverage city) {
    // TODO: implement buildOnCityFetched
    throw UnimplementedError();
  }
}
