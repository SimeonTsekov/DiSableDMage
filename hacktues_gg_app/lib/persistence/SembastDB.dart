import 'package:hacktues_gg_app/model/City.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

@singleton
class SembastDB {
  static SembastDB? _instance;
  static Database? _citiesDB;

  final _citiesDataStore = stringMapStoreFactory.store('cities');

  static Future<String> _generateDBPath(String filename) async {
    final dir = await getApplicationDocumentsDirectory();
    await dir.create(recursive: true);
    return join(dir.path, '$filename.db');
  }

  @preResolve
  @factoryMethod
  static Future<SembastDB> getInstance() async {
    _instance = _instance ?? SembastDB();
    _citiesDB = _citiesDB ??
        await databaseFactoryIo
            .openDatabase(await _generateDBPath('sembast_cities'));
    return _instance!;
  }

  void updateCity(City city) {
    _citiesDataStore.record('city').put(_citiesDB!, city.toJson());
  }

  void deleteCity() {
    _citiesDataStore.record('city').delete(_citiesDB!);
  }

  Future<City> fetchCurrentCity() async {
    final cityRecord = await _citiesDataStore.record('city').get(_citiesDB!);
    return City.fromJson(cityRecord!);
  }
}
