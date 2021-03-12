import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hacktues_gg_app/model/City.dart';
import 'package:injectable/injectable.dart';

@singleton
class FirestoreDatabase {
  FirebaseFirestore get _db => FirebaseFirestore.instance;

  CollectionReference get _cities => _db.collection('cities');

  DocumentReference getCity(String cityId) => _cities.doc(cityId);

  Stream<City> citySnapshots(String cityId) => getCity(cityId).snapshots().map(
        (city) => City.fromJson(city.data()!),
      );

  Future<void> updateCity(City city) async =>
      getCity(city.id).update(city.toJson());

  // not needed?
  Future<City?> fetchCityWithId(String cityId) async {
    final city = await getCity(cityId).get();
    return city.exists ? City.fromJson(city.data()!) : null;
  }
}
