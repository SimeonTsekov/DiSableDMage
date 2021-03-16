import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/blocs/AuthBloc.dart';
import 'package:hacktues_gg_app/blocs/PrefsBackgroundBloc.dart';
import 'package:hacktues_gg_app/di/serviceLocator.dart';
import 'package:hacktues_gg_app/event/PrefBackgroundRunEvent.dart';
import 'package:hacktues_gg_app/navigation/PageManager.dart';
import 'package:hacktues_gg_app/screens/Home.dart';
import 'package:hacktues_gg_app/screens/auth/LoginScreen.dart';
import 'package:hacktues_gg_app/state/AuthState.dart';
import 'package:hacktues_gg_app/widgets/Loading.dart';

class AuthWrapper extends StatelessWidget {
  final AuthBloc _authBloc;
  final PrefsBackgroundRunBloc _prefsBgBloc;

  const AuthWrapper(this._authBloc, this._prefsBgBloc);

  @override
  Widget build(BuildContext context) => StreamBuilder<AuthState>(
        stream: _authBloc.stream,
        builder: (context, snapshot) {
          Widget returnWidget = Loading();
          if (snapshot.data != null) {
            snapshot.data!.when(authenticated: () {
              $<PageManager>().didPopById(key: 'LoadingAuth');
              $<PageManager>().openPage(
                  key: 'Home', builder: () => HomeScreen($(), $(), $()));
              returnWidget = Loading();
            }, failedToAuthenticate: (_) {
              $<PageManager>().didPopById(key: 'LoadingAuth');
              returnWidget = LoginScreen(_authBloc);
            }, loading: () {
              $<PageManager>()
                  .openPage(key: 'LoadingAuth', builder: () => Loading());
              returnWidget = LoginScreen(_authBloc);
            }, unknown: () {
              returnWidget = LoginScreen(_authBloc);
            }, loggedOut: () {
              _prefsBgBloc.sendEvent(PrefBackgroundRunEvent.toggle(false));
              returnWidget = LoginScreen(_authBloc);
            });
          }
          return returnWidget;
        },
      );
}
