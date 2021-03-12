import 'package:flutter/material.dart';

import '../../model/City.dart';
import 'CityScreen.dart';

class AverageStatsScreen extends CityScreen {
  AverageStatsScreen({required String errorText})
      : super(onErrorText: errorText);

  @override
  Widget buildOnCityFetched(City city) {
    throw UnimplementedError();

  }
}
