import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:hacktues_gg_app/model/City.dart';

class Storage {
  final String cityId;

  final Reference _root = FirebaseStorage.instance.ref();

  Storage(this.cityId);

  Future<List<City>> downloadStats() async {
    final refs = _root.child('/cities/$cityId/stats.json');
    final url = await refs.getDownloadURL();

    final data = await Dio().get<List<dynamic>>(url);

    return data.data!.map((e) => City.fromJson(e)).toList();
  }
}
