import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/blocs/base/RxObject.dart';
import 'package:hacktues_gg_app/screens/base/CityScreen.dart';
import 'package:hacktues_gg_app/state/ResponseState.dart';
import 'package:hacktues_gg_app/widgets/Endgame.dart';

abstract class AverageCityScreen<W extends Widget, M,
    T extends RxObject<ResponseState<M>>> extends CityScreen<M, T> {
  AverageCityScreen({required String errorText})
      : super(onErrorText: errorText);

  @override
  Widget buildOnCityFetched(BuildContext context, M? city) {
    // actual project wouldn't rebuild all cards on one change but /shrug

    return city != null
        ? GridView.count(
            physics: ScrollPhysics(),
            crossAxisCount: 2,
            children: buildAverageStatDisplayListFromCityAverage(city))
        : Endgame();
  }

  // 4 GridView
  List<W> buildAverageStatDisplayListFromCityAverage(M city);
}
