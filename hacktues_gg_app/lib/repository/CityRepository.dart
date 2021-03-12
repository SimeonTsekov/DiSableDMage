import 'package:hacktues_gg_app/model/CityAverage.dart';
import 'package:hacktues_gg_app/state/ResponseState.dart';
import 'package:injectable/injectable.dart';

import '../model/City.dart';
import '../services/FirestoreDatabase.dart';
import '../services/Storage.dart';

@singleton
class CityRepository {
  FirestoreDatabase db;
  Storage storage;

  CityRepository({required this.db, required this.storage});

  Future<void> uploadCity(City cityFields) async =>
      await db.updateCity(cityFields);

  Stream<ResponseState<City>> streamCityWithId(String id) =>
      db.citySnapshots(id).map((event) =>
          event != null ? ResponseState(event) : ResponseState.loading());

  Stream<ResponseState<CityAverage>> streamAverageCityWithId(String id) =>
      db.averageCitySnapshot(id).map((event) =>
          event != null ? ResponseState(event) : ResponseState.loading());

  Stream<ResponseState<CityAverage>> streamAverageAllCities() =>
      db.averageAllCitiesSnapshot().map((event) =>
          event != null ? ResponseState(event) : ResponseState.loading());

// methods that return stream and this gets injected to bloc go brrr
}
