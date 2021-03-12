
import 'package:injectable/injectable.dart';

import '../services/FirestoreDatabase.dart';

@singleton
class CityRepository {
  FirestoreDatabase db;

  CityRepository({required this.db});

  // methods that return stream and this gets injected to bloc go brrr
}