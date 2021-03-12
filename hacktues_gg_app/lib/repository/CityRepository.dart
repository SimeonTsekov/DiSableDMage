import 'package:injectable/injectable.dart';

import '../model/City.dart';
import '../services/FirestoreDatabase.dart';
import '../services/Storage.dart';

@singleton
class CityRepository {
  FirestoreDatabase db;
  Storage storage;

  CityRepository({required this.db, required this.storage});

  void uploadCity(City cityFields) {
    // duplicated city with new props
  }

  void fetchCityWithId(String id) {
    // TODO: Fetch user an call FirestoreDatabase method
  }

  void fetchAverageCityWithId(String id) {}
  // methods that return stream and this gets injected to bloc go brrr
}
