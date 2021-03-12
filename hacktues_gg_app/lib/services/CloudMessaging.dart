import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hacktues_gg_app/utils/PrefsKeys.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

Future<void> _backgroundMessageHandler(Map<String, dynamic>? message) async {
  final RxSharedPreferences _prefs = RxSharedPreferences.getInstance();
  _prefs.reload();
  _prefs.getBoolStream(PrefsKeys.SHOULD_RUN_BACKGROUND).listen((event) {
    if (event != null) {
      if (event) {
        // start alarm manager
      } else {
        // pause alarm manager
      }
    }
  });
}

class CloudMessaging {
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;

  void configure() async {
    FirebaseMessaging.onBackgroundMessage(
        (message) => _backgroundMessageHandler(message.data));
    FirebaseMessaging.onMessage.listen((event) {});

    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      // user opened the notification while app was paused
    });

    if (await _fcm.getInitialMessage() != null) {
      // user opened the notification while app was terminated
    }
  }

  Future<String?> getToken() async => await _fcm.getToken();
}
