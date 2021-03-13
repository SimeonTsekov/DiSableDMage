// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'AuthState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _Authenticated authenticated() {
    return const _Authenticated();
  }

  _Loading loading() {
    return const _Loading();
  }

  _FailedToAuthenticate failedToAuthenticate(
      {required NotAuthenticatedReason reason}) {
    return _FailedToAuthenticate(
      reason: reason,
    );
  }

  _UnknownAuth unknown() {
    return const _UnknownAuth();
  }

  _LoggedOut loggedOut() {
    return const _LoggedOut();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() loading,
    required TResult Function(NotAuthenticatedReason reason)
        failedToAuthenticate,
    required TResult Function() unknown,
    required TResult Function() loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? loading,
    TResult Function(NotAuthenticatedReason reason)? failedToAuthenticate,
    TResult Function()? unknown,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FailedToAuthenticate value) failedToAuthenticate,
    required TResult Function(_UnknownAuth value) unknown,
    required TResult Function(_LoggedOut value) loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Loading value)? loading,
    TResult Function(_FailedToAuthenticate value)? failedToAuthenticate,
    TResult Function(_UnknownAuth value)? unknown,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;
}

/// @nodoc
class _$_Authenticated implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() loading,
    required TResult Function(NotAuthenticatedReason reason)
        failedToAuthenticate,
    required TResult Function() unknown,
    required TResult Function() loggedOut,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? loading,
    TResult Function(NotAuthenticatedReason reason)? failedToAuthenticate,
    TResult Function()? unknown,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FailedToAuthenticate value) failedToAuthenticate,
    required TResult Function(_UnknownAuth value) unknown,
    required TResult Function(_LoggedOut value) loggedOut,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Loading value)? loading,
    TResult Function(_FailedToAuthenticate value)? failedToAuthenticate,
    TResult Function(_UnknownAuth value)? unknown,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated() = _$_Authenticated;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() loading,
    required TResult Function(NotAuthenticatedReason reason)
        failedToAuthenticate,
    required TResult Function() unknown,
    required TResult Function() loggedOut,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? loading,
    TResult Function(NotAuthenticatedReason reason)? failedToAuthenticate,
    TResult Function()? unknown,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FailedToAuthenticate value) failedToAuthenticate,
    required TResult Function(_UnknownAuth value) unknown,
    required TResult Function(_LoggedOut value) loggedOut,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Loading value)? loading,
    TResult Function(_FailedToAuthenticate value)? failedToAuthenticate,
    TResult Function(_UnknownAuth value)? unknown,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$FailedToAuthenticateCopyWith<$Res> {
  factory _$FailedToAuthenticateCopyWith(_FailedToAuthenticate value,
          $Res Function(_FailedToAuthenticate) then) =
      __$FailedToAuthenticateCopyWithImpl<$Res>;
  $Res call({NotAuthenticatedReason reason});
}

/// @nodoc
class __$FailedToAuthenticateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$FailedToAuthenticateCopyWith<$Res> {
  __$FailedToAuthenticateCopyWithImpl(
      _FailedToAuthenticate _value, $Res Function(_FailedToAuthenticate) _then)
      : super(_value, (v) => _then(v as _FailedToAuthenticate));

  @override
  _FailedToAuthenticate get _value => super._value as _FailedToAuthenticate;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_FailedToAuthenticate(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as NotAuthenticatedReason,
    ));
  }
}

/// @nodoc
class _$_FailedToAuthenticate implements _FailedToAuthenticate {
  const _$_FailedToAuthenticate({required this.reason});

  @override
  final NotAuthenticatedReason reason;

  @override
  String toString() {
    return 'AuthState.failedToAuthenticate(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailedToAuthenticate &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reason);

  @JsonKey(ignore: true)
  @override
  _$FailedToAuthenticateCopyWith<_FailedToAuthenticate> get copyWith =>
      __$FailedToAuthenticateCopyWithImpl<_FailedToAuthenticate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() loading,
    required TResult Function(NotAuthenticatedReason reason)
        failedToAuthenticate,
    required TResult Function() unknown,
    required TResult Function() loggedOut,
  }) {
    return failedToAuthenticate(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? loading,
    TResult Function(NotAuthenticatedReason reason)? failedToAuthenticate,
    TResult Function()? unknown,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (failedToAuthenticate != null) {
      return failedToAuthenticate(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FailedToAuthenticate value) failedToAuthenticate,
    required TResult Function(_UnknownAuth value) unknown,
    required TResult Function(_LoggedOut value) loggedOut,
  }) {
    return failedToAuthenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Loading value)? loading,
    TResult Function(_FailedToAuthenticate value)? failedToAuthenticate,
    TResult Function(_UnknownAuth value)? unknown,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (failedToAuthenticate != null) {
      return failedToAuthenticate(this);
    }
    return orElse();
  }
}

abstract class _FailedToAuthenticate implements AuthState {
  const factory _FailedToAuthenticate(
      {required NotAuthenticatedReason reason}) = _$_FailedToAuthenticate;

  NotAuthenticatedReason get reason => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailedToAuthenticateCopyWith<_FailedToAuthenticate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnknownAuthCopyWith<$Res> {
  factory _$UnknownAuthCopyWith(
          _UnknownAuth value, $Res Function(_UnknownAuth) then) =
      __$UnknownAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnknownAuthCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnknownAuthCopyWith<$Res> {
  __$UnknownAuthCopyWithImpl(
      _UnknownAuth _value, $Res Function(_UnknownAuth) _then)
      : super(_value, (v) => _then(v as _UnknownAuth));

  @override
  _UnknownAuth get _value => super._value as _UnknownAuth;
}

/// @nodoc
class _$_UnknownAuth implements _UnknownAuth {
  const _$_UnknownAuth();

  @override
  String toString() {
    return 'AuthState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnknownAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() loading,
    required TResult Function(NotAuthenticatedReason reason)
        failedToAuthenticate,
    required TResult Function() unknown,
    required TResult Function() loggedOut,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? loading,
    TResult Function(NotAuthenticatedReason reason)? failedToAuthenticate,
    TResult Function()? unknown,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FailedToAuthenticate value) failedToAuthenticate,
    required TResult Function(_UnknownAuth value) unknown,
    required TResult Function(_LoggedOut value) loggedOut,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Loading value)? loading,
    TResult Function(_FailedToAuthenticate value)? failedToAuthenticate,
    TResult Function(_UnknownAuth value)? unknown,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnknownAuth implements AuthState {
  const factory _UnknownAuth() = _$_UnknownAuth;
}

/// @nodoc
abstract class _$LoggedOutCopyWith<$Res> {
  factory _$LoggedOutCopyWith(
          _LoggedOut value, $Res Function(_LoggedOut) then) =
      __$LoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoggedOutCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$LoggedOutCopyWith<$Res> {
  __$LoggedOutCopyWithImpl(_LoggedOut _value, $Res Function(_LoggedOut) _then)
      : super(_value, (v) => _then(v as _LoggedOut));

  @override
  _LoggedOut get _value => super._value as _LoggedOut;
}

/// @nodoc
class _$_LoggedOut implements _LoggedOut {
  const _$_LoggedOut();

  @override
  String toString() {
    return 'AuthState.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() loading,
    required TResult Function(NotAuthenticatedReason reason)
        failedToAuthenticate,
    required TResult Function() unknown,
    required TResult Function() loggedOut,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? loading,
    TResult Function(NotAuthenticatedReason reason)? failedToAuthenticate,
    TResult Function()? unknown,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FailedToAuthenticate value) failedToAuthenticate,
    required TResult Function(_UnknownAuth value) unknown,
    required TResult Function(_LoggedOut value) loggedOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Loading value)? loading,
    TResult Function(_FailedToAuthenticate value)? failedToAuthenticate,
    TResult Function(_UnknownAuth value)? unknown,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements AuthState {
  const factory _LoggedOut() = _$_LoggedOut;
}
