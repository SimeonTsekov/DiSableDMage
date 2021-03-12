import 'package:hacktues_gg_app/di/serviceLocator.dart';
import 'package:hacktues_gg_app/event/AverageCityEvent.dart';
import 'package:hacktues_gg_app/repository/CityRepository.dart';
import 'package:hacktues_gg_app/state/ResponseState.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../model/CityAverage.dart';
import 'base/Bloc.dart';

@lazySingleton
class CityAverageBloc extends Bloc<
    ResponseState<MapEntry<CityAverage?, CityAverage?>>, AverageCityEvent> {
  final CityRepository _cityRepository = $<CityRepository>();

  CityAverageBloc() : super(ResponseState.idle());

  void _combineCurrentAndAllCities(String id) {
    try {
      Rx.combineLatest2<
              ResponseState<CityAverage?>,
              ResponseState<CityAverage?>,
              MapEntry<CityAverage?, CityAverage>?>(
          _cityRepository.streamAverageCityWithId(id),
          _cityRepository.streamAverageAllCities(), (average, all) {
        late CityAverage? _cityAverage;
        late CityAverage? _allAverage;
        late bool _hasData = false;
        late ResponseState<MapEntry<CityAverage, CityAverage>> _responseState;

        average.when((value) {
          _cityAverage = value;
          _hasData = true;
        },
            idle: () => _responseState = ResponseState.idle(),
            loading: () => _responseState = ResponseState.loading(),
            error: (exc) => _responseState = ResponseState.error(ex: exc));
        all.when((value) {
          _allAverage = value;
          _hasData = true;
        },
            idle: () => _responseState = ResponseState.idle(),
            loading: () => _responseState = ResponseState.loading(),
            error: (exc) => _responseState = ResponseState.error(ex: exc));
        if (_hasData) {
          emitState(ResponseState(MapEntry(_cityAverage!, _allAverage!)));
        } else {
          emitState(_responseState);
        }
      });
    } on Exception catch (e) {
      emitState(ResponseState.error(ex: e));
    }
  }

  @override
  sendEvent(AverageCityEvent event) =>
      event.when(fetchAverageCityWithAllCities: _combineCurrentAndAllCities);
}
