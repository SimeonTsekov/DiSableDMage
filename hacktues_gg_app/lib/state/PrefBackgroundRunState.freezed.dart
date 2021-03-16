// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'PrefBackgroundRunState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PrefBackgroundRunStateTearOff {
  const _$PrefBackgroundRunStateTearOff();

  _On on() {
    return const _On();
  }

  _Off off() {
    return const _Off();
  }
}

/// @nodoc
const $PrefBackgroundRunState = _$PrefBackgroundRunStateTearOff();

/// @nodoc
mixin _$PrefBackgroundRunState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() on,
    required TResult Function() off,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? on,
    TResult Function()? off,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_On value) on,
    required TResult Function(_Off value) off,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_On value)? on,
    TResult Function(_Off value)? off,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrefBackgroundRunStateCopyWith<$Res> {
  factory $PrefBackgroundRunStateCopyWith(PrefBackgroundRunState value,
          $Res Function(PrefBackgroundRunState) then) =
      _$PrefBackgroundRunStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PrefBackgroundRunStateCopyWithImpl<$Res>
    implements $PrefBackgroundRunStateCopyWith<$Res> {
  _$PrefBackgroundRunStateCopyWithImpl(this._value, this._then);

  final PrefBackgroundRunState _value;
  // ignore: unused_field
  final $Res Function(PrefBackgroundRunState) _then;
}

/// @nodoc
abstract class _$OnCopyWith<$Res> {
  factory _$OnCopyWith(_On value, $Res Function(_On) then) =
      __$OnCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnCopyWithImpl<$Res> extends _$PrefBackgroundRunStateCopyWithImpl<$Res>
    implements _$OnCopyWith<$Res> {
  __$OnCopyWithImpl(_On _value, $Res Function(_On) _then)
      : super(_value, (v) => _then(v as _On));

  @override
  _On get _value => super._value as _On;
}

/// @nodoc
class _$_On implements _On {
  const _$_On();

  @override
  String toString() {
    return 'PrefBackgroundRunState.on()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _On);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() on,
    required TResult Function() off,
  }) {
    return on();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? on,
    TResult Function()? off,
    required TResult orElse(),
  }) {
    if (on != null) {
      return on();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_On value) on,
    required TResult Function(_Off value) off,
  }) {
    return on(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_On value)? on,
    TResult Function(_Off value)? off,
    required TResult orElse(),
  }) {
    if (on != null) {
      return on(this);
    }
    return orElse();
  }
}

abstract class _On implements PrefBackgroundRunState {
  const factory _On() = _$_On;
}

/// @nodoc
abstract class _$OffCopyWith<$Res> {
  factory _$OffCopyWith(_Off value, $Res Function(_Off) then) =
      __$OffCopyWithImpl<$Res>;
}

/// @nodoc
class __$OffCopyWithImpl<$Res>
    extends _$PrefBackgroundRunStateCopyWithImpl<$Res>
    implements _$OffCopyWith<$Res> {
  __$OffCopyWithImpl(_Off _value, $Res Function(_Off) _then)
      : super(_value, (v) => _then(v as _Off));

  @override
  _Off get _value => super._value as _Off;
}

/// @nodoc
class _$_Off implements _Off {
  const _$_Off();

  @override
  String toString() {
    return 'PrefBackgroundRunState.off()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Off);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() on,
    required TResult Function() off,
  }) {
    return off();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? on,
    TResult Function()? off,
    required TResult orElse(),
  }) {
    if (off != null) {
      return off();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_On value) on,
    required TResult Function(_Off value) off,
  }) {
    return off(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_On value)? on,
    TResult Function(_Off value)? off,
    required TResult orElse(),
  }) {
    if (off != null) {
      return off(this);
    }
    return orElse();
  }
}

abstract class _Off implements PrefBackgroundRunState {
  const factory _Off() = _$_Off;
}
