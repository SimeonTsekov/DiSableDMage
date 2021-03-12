import 'package:hacktues_gg_app/event/AuthEvent.dart';
import 'package:hacktues_gg_app/services/Auth.dart';
import 'package:hacktues_gg_app/state/AuthState.dart';
import 'package:injectable/injectable.dart';

import 'base/Bloc.dart';

@injectable
class AuthBloc extends Bloc<AuthState, AuthEvent> {
  final Auth _auth;

  AuthBloc(this._auth) : super(AuthState.unknown()) {
    _auth.onAuthStateChanged.listen(emitState);
  }

  @override
  sendEvent(AuthEvent event) => event.when(
      authenticate: (email, password) =>
          _auth.signIn(email: email, password: password),
      logout: () => _auth.signOut());
}
