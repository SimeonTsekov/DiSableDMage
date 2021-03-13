import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hacktues_gg_app/model/City.dart';
import 'package:hacktues_gg_app/model/CityAverage.dart';
import 'package:hacktues_gg_app/persistence/SembastDB.dart';
import 'package:injectable/injectable.dart';

@Singleton(dependsOn: [SembastDB])
class FirestoreDatabase {
  final SembastDB localDb;

  FirebaseFirestore get _db => FirebaseFirestore.instance;

  CollectionReference get _cities => _db.collection('cities');

  CollectionReference get _averageCities => _db.collection('cities_agr');

  DocumentReference getCity(String cityId) {
    print('Getting city');
    return _cities.doc(cityId);
  }

  DocumentReference getAverageCity(String cityId) => _averageCities.doc(cityId);

  DocumentReference getAverageAllCities() =>
      _averageCities.doc('all_cities_agr');

  const FirestoreDatabase({required this.localDb});

  Stream<City?> citySnapshots(String cityId) =>
      getCity(cityId).snapshots().map((city) {
        if (city.data() != null) {
          print('BRUH');
          City parsedCity = City.fromJson(city.data()!);
          localDb.updateCity(parsedCity);
          return parsedCity;
        } else {
          print('WHAT');
          localDb.deleteCity();
          return null;
        }
      });

  Stream<CityAverage?> averageCitySnapshot(String cityId) =>
      getAverageCity(cityId).snapshots().map((averageCity) =>
          averageCity.data() != null
              ? CityAverage.fromJson(averageCity.data()!)
              : null);

  Stream<CityAverage?> averageAllCitiesSnapshot() =>
      getAverageAllCities().snapshots().map((averageCity) {
        if (averageCity.data() != null) {
          print('not null');
          return CityAverage.fromJson(averageCity.data()!);
        } else {
          print('null');
          return null;
        }
      });

  Future<void> updateCity(City city) async =>
      await getCity(city.id).update(city.toJson());
}
