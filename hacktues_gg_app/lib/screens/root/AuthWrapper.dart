import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/blocs/AuthBloc.dart';
import 'package:hacktues_gg_app/blocs/PrefsBackgroundBloc.dart';
import 'package:hacktues_gg_app/di/serviceLocator.dart';
import 'package:hacktues_gg_app/event/PrefBackgroundRunEvent.dart';
import 'package:hacktues_gg_app/navigation/PageManager.dart';
import 'package:hacktues_gg_app/screens/Home.dart';
import 'package:hacktues_gg_app/screens/auth/LoginScreen.dart';
import 'package:hacktues_gg_app/state/AuthState.dart';
import 'package:hacktues_gg_app/utils/StreamListener.dart';

class AuthWrapper extends StatelessWidget {
  final AuthBloc _authBloc;
  final PrefsBackgroundRunBloc _prefsBgBloc;

  const AuthWrapper(this._authBloc, this._prefsBgBloc);

  @override
  Widget build(BuildContext context) => StreamListener<AuthState>(
        stream: _authBloc.stream,
        onData: (snapshot) {
          snapshot.when(
              authenticated: () => $<PageManager>().openPage(
                  key: 'Home', builder: () => HomeScreen($(), $(), $())),
              failedToAuthenticate: (_) {},
              unknown: () {},
              loggedOut: () async {
                await _prefsBgBloc
                    .sendEvent(PrefBackgroundRunEvent.toggle(false));
                $<PageManager>().openPage(
                    key: 'Login', builder: () => LoginScreen(_authBloc));
              });
        },
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
}
