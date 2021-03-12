import 'package:get_it/get_it.dart';
import 'package:hacktues_gg_app/di/serviceLocator.config.dart';
import 'package:injectable/injectable.dart';

final $ = GetIt.I;

@injectableInit
void configureDependencies() => $initGetIt($);
