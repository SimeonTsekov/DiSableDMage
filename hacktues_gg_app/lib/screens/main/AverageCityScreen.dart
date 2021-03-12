import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/blocs/base/RxObject.dart';
import 'package:hacktues_gg_app/screens/main/CityScreen.dart';
import 'package:hacktues_gg_app/state/ResponseState.dart';

abstract class AverageCityScreen<W extends Widget, M, T extends RxObject<ResponseState<M>>>
    extends CityScreen<M, T> {
  AverageCityScreen({required String errorText}) :
        super(onErrorText: errorText);

  @override
  Widget buildOnCityFetched(BuildContext context, M city) {
    // actual project wouldn't rebuild all cards on one change but /shrug
    final List<W> averageStatCards =
      buildAverageStatDisplayListFromCityAverage(city);

    return GridView.count(
        physics: ScrollPhysics(),
        crossAxisCount: 2,
        children: averageStatCards
    );
  }

  // 4 GridView
  List<W> buildAverageStatDisplayListFromCityAverage(M city);
}
