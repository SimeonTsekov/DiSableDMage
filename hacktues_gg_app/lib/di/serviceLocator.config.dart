// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../blocs/AuthBloc.dart' as _i10;
import '../blocs/CityAverageBloc.dart' as _i3;
import '../blocs/CityBloc.dart' as _i13;
import '../blocs/CityPreviousStatisticsBloc.dart' as _i15;
import '../blocs/PrefsBackgroundBloc.dart' as _i6;
import '../navigation/PageManager.dart' as _i5;
import '../persistence/SembastDB.dart' as _i14;
import '../repository/CityRepository.dart' as _i11;
import '../services/Auth.dart' as _i8;
import '../services/CloudMessaging.dart' as _i4;
import '../services/FirestoreDatabase.dart' as _i9;
import '../services/Prefs.dart' as _i7;
import '../services/Storage.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.CityAverageBloc>(() => _i3.CityAverageBloc());
  gh.lazySingleton<_i4.CloudMessaging>(() => _i4.CloudMessaging());
  gh.lazySingleton<_i5.PageManager>(() => _i5.PageManager());
  gh.lazySingleton<_i6.PrefsBackgroundRunBloc>(
      () => _i6.PrefsBackgroundRunBloc(get<_i7.Prefs>()));
  gh.lazySingleton<_i8.Auth>(
      () => _i8.Auth(get<_i9.FirestoreDatabase>(), get<_i4.CloudMessaging>()));
  gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(get<_i8.Auth>()));
  gh.lazySingleton<_i11.CityRepository>(() => _i11.CityRepository(
      db: get<_i9.FirestoreDatabase>(), storage: get<_i12.Storage>()));
  gh.lazySingleton<_i13.CityBloc>(
      () => _i13.CityBloc(get<_i11.CityRepository>()));
  gh.singleton<_i7.Prefs>(_i7.Prefs());
  gh.singletonAsync<_i14.SembastDB>(() => _i14.SembastDB.getInstance());
  gh.singleton<_i12.Storage>(_i12.Storage());
  gh.singleton<_i15.CityPreviousStatisticsBloc>(
      _i15.CityPreviousStatisticsBloc(get<_i12.Storage>()));
  gh.singletonWithDependencies<_i9.FirestoreDatabase>(
      () => _i9.FirestoreDatabase(localDb: get<_i14.SembastDB>()),
      dependsOn: [_i14.SembastDB]);
  return get;
}
