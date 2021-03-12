import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hacktues_gg_app/model/City.dart';
import 'package:injectable/injectable.dart';

@singleton
class FirestoreDatabase {
  FirebaseFirestore get _db => FirebaseFirestore.instance;

  CollectionReference get _cities => _db.collection('cities');

  DocumentReference getCity(String cityId) => _cities.doc(cityId);

  Stream<City> citySnapshots(String cityId) => getCity(cityId).snapshots().map(
        (city) => City(
            id: city.id,
            name: city.get('name'),
            population: city.get('population'),
            buildingCount: city.get('buildingCount'),
            factoryCount: city.get('factoryCount'),
            houseCount: city.get('houseCount'),
            money: city.get('money'),
            moneyMultiplier: city.get('moneyMultiplier'),
            pollution: city.get('pollution'),
            pollutionMultiplier: city.get('pollutionMultiplier'),
            power: city.get('power'),
            powerMultiplier: city.get('powerMultiplier'),
            updatedAt: city.get('updatedAt')),
      );
}
