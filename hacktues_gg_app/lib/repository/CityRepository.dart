import 'package:injectable/injectable.dart';

import '../services/FirestoreDatabase.dart';
import '../services/Storage.dart';

@singleton
class CityRepository {
  FirestoreDatabase db;
  Storage storage;

  CityRepository({required this.db, required this.storage});

  // methods that return stream and this gets injected to bloc go brrr
}
