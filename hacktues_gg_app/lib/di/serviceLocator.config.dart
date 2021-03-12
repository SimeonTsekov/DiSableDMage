// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../blocs/AuthBloc.dart' as _i4;
import '../blocs/AverageCityBloc.dart' as _i5;
import '../blocs/CityBloc.dart' as _i6;
import '../blocs/PrefsBackgroundBloc.dart' as _i8;
import '../navigation/PageManager.dart' as _i7;
import '../repository/CityRepository.dart' as _i12;
import '../services/Auth.dart' as _i3;
import '../services/FirestoreDatabase.dart' as _i10;
import '../services/Prefs.dart' as _i9;
import '../services/Storage.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.Auth>(() => _i3.Auth());
  gh.factory<_i4.AuthBloc>(() => _i4.AuthBloc(get<_i3.Auth>()));
  gh.lazySingleton<_i5.CityAverageBloc>(() => _i5.CityAverageBloc());
  gh.lazySingleton<_i6.CityBloc>(() => _i6.CityBloc());
  gh.lazySingleton<_i7.PageManager>(() => _i7.PageManager());
  gh.lazySingleton<_i8.PrefsBackgroundRunBloc>(
      () => _i8.PrefsBackgroundRunBloc(get<_i9.Prefs>()));
  gh.singleton<_i10.FirestoreDatabase>(_i10.FirestoreDatabase());
  gh.singleton<_i9.Prefs>(_i9.Prefs());
  gh.singleton<_i11.Storage>(_i11.Storage());
  gh.singleton<_i12.CityRepository>(_i12.CityRepository(
      db: get<_i10.FirestoreDatabase>(), storage: get<_i11.Storage>()));
  return get;
}
