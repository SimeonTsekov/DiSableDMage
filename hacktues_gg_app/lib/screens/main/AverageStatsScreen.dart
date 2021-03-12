import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/blocs/AverageCityBloc.dart';
import 'package:hacktues_gg_app/model/CityAverage.dart';

import 'CityScreen.dart';

class AverageStatsScreen extends CityScreen<CityAverage, CityAverageBloc> {
  AverageStatsScreen({required String errorText})
      : super(onErrorText: errorText);

  @override
  Widget buildOnCityFetched(CityAverage city) {
    throw UnimplementedError();
  }
}
