import 'package:hacktues_gg_app/di/serviceLocator.dart';
import 'package:hacktues_gg_app/event/CityEvent.dart';
import 'package:hacktues_gg_app/repository/CityRepository.dart';
import 'package:hacktues_gg_app/state/ResponseState.dart';
import 'package:injectable/injectable.dart';

import '../model/City.dart';
import 'base/Bloc.dart';

@lazySingleton
class CityBloc extends Bloc<ResponseState<City>, CityEvent> {
  final CityRepository _cityRepository = $<CityRepository>();

  CityBloc() : super(ResponseState.idle());

  void _updateCity(City city) async {
    emitState(ResponseState.loading());
    await _cityRepository.uploadCity(city);
    emitState(ResponseState(city));
  }

  void _fetchCityForId(String id) =>
      _cityRepository.streamCityWithId(id).listen(emitState);

  @override
  sendEvent(CityEvent event) {
    event.when(fetchCityWithId: _fetchCityForId, updateCity: _updateCity);
  }
}