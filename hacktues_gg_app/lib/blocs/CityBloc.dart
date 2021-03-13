import 'package:hacktues_gg_app/di/serviceLocator.dart';
import 'package:hacktues_gg_app/event/CityEvent.dart';
import 'package:hacktues_gg_app/repository/CityRepository.dart';
import 'package:hacktues_gg_app/state/ResponseState.dart';
import 'package:injectable/injectable.dart';

import '../model/City.dart';
import 'base/Bloc.dart';

@lazySingleton
class CityBloc extends Bloc<ResponseState<City?>, CityEvent> {
  final CityRepository _cityRepository;

  CityBloc(this._cityRepository) : super(ResponseState.idle());

  void _updateCity(City city) async {
    emitState(ResponseState.loading());
    await _cityRepository.uploadCity(city);
    emitState(ResponseState(city));
  }

  void _fetchCityForId(String id) {
    try {
      print('Emitting');
      _cityRepository.streamCityWithId(id).listen(emitState);
    } on Exception catch (e) {
      emitState(ResponseState.error(ex: e));
    }
  }

  @override
  sendEvent(CityEvent event) {
    event.when(fetchCityWithId: _fetchCityForId, updateCity: _updateCity);
  }
}
