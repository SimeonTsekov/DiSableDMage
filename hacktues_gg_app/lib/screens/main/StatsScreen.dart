import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/blocs/CityBloc.dart';
import 'package:hacktues_gg_app/model/City.dart';

import 'CityScreen.dart';

// TODO: ALWAYS FIRESTORE LISTENER
class StatsScreen extends CityScreen<City, CityBloc> {
  StatsScreen({required String errorText}) : super(onErrorText: errorText);

  @override
  Widget buildOnCityFetched(City city) {
    // TODO: implement buildOnCityFetched
    throw UnimplementedError();
  }
}
