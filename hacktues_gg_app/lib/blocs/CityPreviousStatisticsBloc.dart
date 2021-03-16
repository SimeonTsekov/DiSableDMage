import 'package:hacktues_gg_app/model/City.dart';
import 'package:hacktues_gg_app/services/Storage.dart';
import 'package:hacktues_gg_app/state/ResponseState.dart';
import 'package:injectable/injectable.dart';

import 'base/Bloc.dart';

// When background works, cache into local sembast data (the periodic callbackl), and then onResume => put all shit into Storage.

@singleton
class CityPreviousStatisticsBloc
    extends Bloc<ResponseState<List<City>?>, City> {
  final Storage _storage;

  List<City> _lastStatistics = [];

  CityPreviousStatisticsBloc(this._storage) : super(ResponseState.idle());

  Future<void> fetchInitialStatistics(String id) async {
    try {
      emitState(ResponseState.loading());
      final stats = await _storage.downloadStats(id) ?? [];
      _lastStatistics.addAll(stats);
      emitState(
          ResponseState(_lastStatistics.isEmpty ? null : _lastStatistics));
    } on Exception catch (e) {
      emitState(ResponseState.error(ex: e));
    }
  }

  @override
  sendEvent(City event) {
    try {
      _lastStatistics.add(event);
      emitState(ResponseState(_lastStatistics));
    } on Exception catch (e) {
      emitState(ResponseState.error(ex: e));
    }
  }
}
