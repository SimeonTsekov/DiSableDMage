import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/model/City.dart';

import 'CityScreen.dart';

// TODO: When working & uploading on BG, add firestore snapshot doc listener as well
// TODO: Else use Storage as SSOT
class StatsScreen extends CityScreen {
  StatsScreen({required String errorText}) : super(onErrorText: errorText);

  @override
  Widget buildOnCityFetched(City city) {
    // TODO: implement buildOnCityFetched
    throw UnimplementedError();
  }
}
