import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:hacktues_gg_app/model/City.dart';
import 'package:injectable/injectable.dart';

@singleton
class Storage {
  final Reference _root = FirebaseStorage.instance.ref();

  Future<List<City>?> downloadStats(String cityId) async {
    final refs = _root.child('/cities/$cityId/stats.json');
    final url = await refs.getDownloadURL();

    final data = (await Dio().get<List<dynamic>>(url)).data;

    return data != null ? data.map((e) => City.fromJson(e)).toList() : null;
  }

  Future<void> uploadStats(City city) async {
    final cityId = city.id;
    final lastStats = await this.downloadStats(cityId) ?? [city];

    final uploadData = _convertStatsToUint8List(lastStats);

    Reference uploadRef = _root.child('/cities/$cityId/stats.json');

    await uploadRef
        .putData(uploadData, SettableMetadata(contentType: 'application/json'))
        .whenComplete(() => {});
  }

  Uint8List _convertStatsToUint8List(List<City> lastStats) {
    JsonEncoder encoder = JsonEncoder.withIndent('  ');

    String jsonString = encoder.convert(lastStats);
    List<int> bytes = utf8.encode(jsonString);

    return base64.decode(base64.encode(bytes));
  }
}
