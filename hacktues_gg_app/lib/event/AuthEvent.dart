import 'package:freezed_annotation/freezed_annotation.dart';

part 'AuthEvent.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authenticate(
      {required String email, required String password}) = _Authenticate;

  const factory AuthEvent.logout() = _Logout;
}
