// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../blocs/AuthBloc.dart' as _i4;
import '../blocs/CityBloc.dart' as _i5;
import '../blocs/PrefsBackgroundBloc.dart' as _i7;
import '../navigation/PageManager.dart' as _i6;
import '../repository/CityRepository.dart' as _i11;
import '../services/Auth.dart' as _i3;
import '../services/FirestoreDatabase.dart' as _i9;
import '../services/Prefs.dart' as _i8;
import '../services/Storage.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.Auth>(() => _i3.Auth());
  gh.factory<_i4.AuthBloc>(() => _i4.AuthBloc(get<_i3.Auth>()));
  gh.lazySingleton<_i5.CityBloc>(() => _i5.CityBloc());
  gh.lazySingleton<_i6.PageManager>(() => _i6.PageManager());
  gh.lazySingleton<_i7.PrefsBackgroundRunBloc>(
      () => _i7.PrefsBackgroundRunBloc(get<_i8.Prefs>()));
  gh.singleton<_i9.FirestoreDatabase>(_i9.FirestoreDatabase());
  gh.singleton<_i8.Prefs>(_i8.Prefs());
  gh.singleton<_i10.Storage>(_i10.Storage());
  gh.singleton<_i11.CityRepository>(_i11.CityRepository(
      db: get<_i9.FirestoreDatabase>(), storage: get<_i10.Storage>()));
  return get;
}
