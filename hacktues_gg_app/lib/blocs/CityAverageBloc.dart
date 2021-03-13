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

  // REFACTOR THIS to actually use combineLatest2
  void _combineCurrentAndAllCities(String id) {
    try {
      Rx.merge([
        _cityRepository.streamAverageCityWithId(id),
        _cityRepository.streamAverageAllCities()
      ]).listen((event) {
        {
          late CityAverage? _cityAverage;
          late bool _hasData = false;
          late ResponseState<MapEntry<CityAverage, CityAverage>> _responseState;

          event.when((value) {
            _cityAverage = value;
            _hasData = true;
          },
              idle: () => _responseState = ResponseState.idle(),
              loading: () => _responseState = ResponseState.loading(),
              error: (exc) => _responseState = ResponseState.error(ex: exc));
          if (_hasData) {
            emitState(ResponseState(MapEntry(_cityAverage!, _cityAverage!)));
          } else {
            print(_responseState.toString());
            emitState(_responseState);
          }
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
