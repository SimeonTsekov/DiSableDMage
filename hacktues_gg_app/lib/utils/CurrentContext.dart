import 'package:hacktues_gg_app/di/serviceLocator.dart';
import 'package:hacktues_gg_app/services/Auth.dart';

mixin CurrentContext {
  String get currentCityId => $<Auth>().currentUserId;
}
