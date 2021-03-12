import 'package:hacktues_gg_app/event/PrefBackgroundRunEvent.dart';
import 'package:hacktues_gg_app/services/Prefs.dart';
import 'package:hacktues_gg_app/state/PrefBackgroundRunState.dart';
import 'package:injectable/injectable.dart';

import 'base/Bloc.dart';

// direct access to Rx
// pref state & event = application (foreground) workmanager state
// prefs rx = should run FCM
@lazySingleton
class PrefsBackgroundRunBloc
    extends Bloc<PrefBackgroundRunState, PrefBackgroundRunEvent> {
  final Prefs _prefs;

  PrefsBackgroundRunBloc(this._prefs) : super(PrefBackgroundRunState.off());

  Stream<bool?> getShouldFetchBackgroundStream() =>
      _prefs.getShouldFetchBackgroundStream();

  @override
  sendEvent(PrefBackgroundRunEvent event) {
    // TODO: implement sendEvent
  }
}
