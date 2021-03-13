import 'package:firebase_auth/firebase_auth.dart';
import 'package:hacktues_gg_app/state/AuthState.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<AuthState> signIn(
      {required String email, required String password}) async {
    User user;
    try {
      final UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = credential.user!;
      final id = user.uid;
      // Do stuff with the ID
      return AuthState.authenticated();
    } on FirebaseAuthException catch (e) {
      return AuthState.failedToAuthenticate(
          reason: AuthExceptionHandler.handleException(e)
      );
    }
  }

  Future<void> signOut() async => await _auth.signOut();
}

extension UserStatus on Auth {
  Stream<AuthState> get onAuthStateChanged =>
      _auth.authStateChanges().map((user) =>
          user == null ? AuthState.loggedOut() : AuthState.authenticated());

  String get currentUserId => _auth.currentUser!.uid;
}

extension AuthExceptionHandler on Auth {
  static NotAuthenticatedReason handleException(FirebaseAuthException e) {
    var status;
    switch (e.code) {
      case "invalid-email":
        status = NotAuthenticatedReason.invalidEmail;
        break;
      case "wrong-password":
        status = NotAuthenticatedReason.wrongPassword;
        break;
      case "user-not-found":
        status = NotAuthenticatedReason.userNotFound;
        break;
      case "user-disabled":
        status = NotAuthenticatedReason.userDisabled;
        break;
      default:
        status = NotAuthenticatedReason.undefined;
    }
    return status;
  }
}
