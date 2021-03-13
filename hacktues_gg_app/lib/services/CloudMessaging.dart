import 'package:background_fetch/background_fetch.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hacktues_gg_app/main.dart';
import 'package:hacktues_gg_app/utils/PrefsKeys.dart';
import 'package:injectable/injectable.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

Future<void> _backgroundMessageHandler(Map<String, dynamic>? message) async {
  final RxSharedPreferences _prefs = RxSharedPreferences.getInstance();
  _prefs.reload();
  bool shouldBgRun = message?['isActive'] == false;

  bool foregroundShouldBgRun =
      await _prefs.getBoolStream(PrefsKeys.SHOULD_RUN_BACKGROUND).first == true;
  _prefs.setBool(PrefsKeys.SHOULD_RUN_BACKGROUND, shouldBgRun);

  if (foregroundShouldBgRun && shouldBgRun) {
    await configureBackgroundFetch();
  } else {
    BackgroundFetch.finish(calculationsTaskId);
  }
}

@lazySingleton
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