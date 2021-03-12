import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hacktues_gg_app/model/City.dart';

class FirestoreDatabase {
  FirebaseFirestore get _db => FirebaseFirestore.instance;
  late final String cityId;

  CollectionReference get _cities => _db.collection('cities');

  DocumentReference get _city => _cities.doc(cityId);

  FirestoreDatabase({required this.cityId});

  Stream<City> citySnapshots() => _city.snapshots().map(
        (city) => City(
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
