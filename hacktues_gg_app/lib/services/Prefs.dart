import 'package:injectable/injectable.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

import '../utils/PrefsKeys.dart';

@singleton
class Prefs {
  final RxSharedPreferences _prefs = RxSharedPreferences.getInstance();

  Stream<bool?> getShouldFetchBackgroundStream() =>
      _prefs.getBoolStream(PrefsKeys.SHOULD_RUN_BACKGROUND);
}
