import 'package:hacktues_gg_app/di/serviceLocator.dart';
import 'package:hacktues_gg_app/event/AverageCityEvent.dart';
import 'package:hacktues_gg_app/repository/CityRepository.dart';
import 'package:hacktues_gg_app/state/ResponseState.dart';
import 'package:injectable/injectable.dart';

import '../model/CityAverage.dart';
import 'base/Bloc.dart';

@lazySingleton
class CityAverageBloc
    extends Bloc<ResponseState<CityAverage>, AverageCityEvent> {
  final CityRepository _cityRepository = $<CityRepository>();

  CityAverageBloc() : super(ResponseState.idle());

  void _fetchAverageCityForId(String id) =>
      _cityRepository.streamAverageCityWithId(id).listen(emitState);

  void _fetchAverageAllCities() =>
      _cityRepository.streamAverageAllCities().listen(emitState);

  @override
  sendEvent(AverageCityEvent event) {
    event.when(
        fetchAverageCityWithId: _fetchAverageCityForId,
        fetchAverageAllCities: _fetchAverageAllCities);
  }
}
