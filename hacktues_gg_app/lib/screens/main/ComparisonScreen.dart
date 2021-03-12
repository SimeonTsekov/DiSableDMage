// part of AverageStatsScreen 2-panel pageview for stats

import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/model/City.dart';

import 'CityScreen.dart';

class ComparisonScreen extends CityScreen {
  ComparisonScreen({required String errorText}) : super(onErrorText: errorText);

  @override
  Widget buildOnCityFetched(City city) {
    // TODO: implement buildOnCityFetched
    throw UnimplementedError();
  }
}
