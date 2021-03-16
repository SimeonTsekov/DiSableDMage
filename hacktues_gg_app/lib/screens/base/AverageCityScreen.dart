import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/blocs/base/RxObject.dart';
import 'package:hacktues_gg_app/screens/base/CityScreen.dart';
import 'package:hacktues_gg_app/state/ResponseState.dart';
import 'package:hacktues_gg_app/widgets/Endgame.dart';

abstract class AverageCityScreen<W extends Widget, M,
    T extends RxObject<ResponseState<M>>> extends CityScreen<M, T> {
  int get itemCount => gridItemMapper.keys.length;

  late final Map<int, W Function(M)> gridItemMapper;

  AverageCityScreen({required String errorText})
      : super(onErrorText: errorText);

  // def'd LiveAnimation options for GridView
  final options = const LiveOptions(
    showItemInterval: Duration(seconds: 4),
    delay: Duration(seconds: 1),
    showItemDuration: Duration(seconds: 2),
    visibleFraction: 0.05,
    reAnimateOnVisibility: false,
  );

  @override
  Widget buildOnCityFetched(BuildContext context, M? city) =>
      // actual project wouldn't rebuild all cards on one change but /shrug
      city != null
          ? LiveGrid.options(
              options: options,
              physics: ScrollPhysics(),
              itemCount: itemCount,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, idx, anim) =>
                  buildAverageStatDisplayFromCityAverage(
                      context, idx, anim, city),
            )
          : Endgame();

  // 4 GridView
  W buildAverageStatDisplayFromCityAverage(
      BuildContext buildContext, int index, Animation<double> anim, M city) {
    W Function(M)? gen = gridItemMapper[index];
    return gen != null
        ? gen(city)
        : throw Exception('Invalid build index for gen!');
  }
}
