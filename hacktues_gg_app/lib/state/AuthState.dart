import 'package:freezed_annotation/freezed_annotation.dart';

part 'AuthState.freezed.dart';

enum NotAuthenticatedReason {
  emailAlreadyExists,
  wrongPassword,
  invalidEmail,
  userNotFound,
  userDisabled,
  deviceSerialNumberDoesNotExist,
  undefined,
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated() = _Authenticated;

  const factory AuthState.failedToAuthenticate(
      {required NotAuthenticatedReason reason}) = _FailedToAuthenticate;

  const factory AuthState.unknown() = _UnknownAuth;

  const factory AuthState.loggedOut() = _LoggedOut;
}
