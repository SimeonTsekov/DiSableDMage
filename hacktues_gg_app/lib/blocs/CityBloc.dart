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

  void uploadCityWithId(City city) => _cityRepository.uploadCity(city);

  void fetchCityForId(String id) => _cityRepository.fetchCityWithId(id);

  @override
  sendEvent(CityEvent event) {
    event.when(
      fetchCityWithId: (id) {},
      uploadCityWithId: (id) {},
    );
  }
}
