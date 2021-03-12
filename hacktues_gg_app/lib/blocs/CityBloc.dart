import 'package:hacktues_gg_app/di/serviceLocator.dart';
import 'package:hacktues_gg_app/event/CityEvent.dart';
import 'package:hacktues_gg_app/model/City.dart';
import 'package:hacktues_gg_app/repository/CityRepository.dart';
import 'package:hacktues_gg_app/state/ResponseState.dart';
import 'package:injectable/injectable.dart';

import 'base/Bloc.dart';

@lazySingleton
class CityBloc extends Bloc<ResponseState<City>, CityEvent> {
  final CityRepository _cityRepository = $<CityRepository>();

  CityBloc() : super(ResponseState.idle());

  @override
  sendEvent(CityEvent event) {}
}
