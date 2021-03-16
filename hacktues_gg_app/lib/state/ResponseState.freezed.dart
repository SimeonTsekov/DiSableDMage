// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ResponseState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResponseStateTearOff {
  const _$ResponseStateTearOff();

  _Data<T> call<T>(T value) {
    return _Data<T>(
      value,
    );
  }

  _Idle<T> idle<T>() {
    return _Idle<T>();
  }

  _Loading<T> loading<T>() {
    return _Loading<T>();
  }

  _ErrorDetails<T> error<T>({Exception? ex}) {
    return _ErrorDetails<T>(
      ex: ex,
    );
  }
}

/// @nodoc
const $ResponseState = _$ResponseStateTearOff();

/// @nodoc
mixin _$ResponseState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Exception? ex) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Exception? ex)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Data<T> value) $default, {
    required TResult Function(_Idle<T> value) idle,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_ErrorDetails<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Data<T> value)? $default, {
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseStateCopyWith<T, $Res> {
  factory $ResponseStateCopyWith(
          ResponseState<T> value, $Res Function(ResponseState<T>) then) =
      _$ResponseStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ResponseStateCopyWithImpl<T, $Res>
    implements $ResponseStateCopyWith<T, $Res> {
  _$ResponseStateCopyWithImpl(this._value, this._then);

  final ResponseState<T> _value;
  // ignore: unused_field
  final $Res Function(ResponseState<T>) _then;
}

/// @nodoc
abstract class _$DataCopyWith<T, $Res> {
  factory _$DataCopyWith(_Data<T> value, $Res Function(_Data<T>) then) =
      __$DataCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class __$DataCopyWithImpl<T, $Res> extends _$ResponseStateCopyWithImpl<T, $Res>
    implements _$DataCopyWith<T, $Res> {
  __$DataCopyWithImpl(_Data<T> _value, $Res Function(_Data<T>) _then)
      : super(_value, (v) => _then(v as _Data<T>));

  @override
  _Data<T> get _value => super._value as _Data<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_Data<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
class _$_Data<T> with DiagnosticableTreeMixin implements _Data<T> {
  const _$_Data(this.value);

  @override
  final T value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseState<$T>(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseState<$T>'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data<T> &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<T, _Data<T>> get copyWith =>
      __$DataCopyWithImpl<T, _Data<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Exception? ex) error,
  }) {
    return $default(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Exception? ex)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Data<T> value) $default, {
    required TResult Function(_Idle<T> value) idle,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_ErrorDetails<T> value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Data<T> value)? $default, {
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Data<T> implements ResponseState<T> {
  const factory _Data(T value) = _$_Data<T>;

  T get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataCopyWith<T, _Data<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IdleCopyWith<T, $Res> {
  factory _$IdleCopyWith(_Idle<T> value, $Res Function(_Idle<T>) then) =
      __$IdleCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$IdleCopyWithImpl<T, $Res> extends _$ResponseStateCopyWithImpl<T, $Res>
    implements _$IdleCopyWith<T, $Res> {
  __$IdleCopyWithImpl(_Idle<T> _value, $Res Function(_Idle<T>) _then)
      : super(_value, (v) => _then(v as _Idle<T>));

  @override
  _Idle<T> get _value => super._value as _Idle<T>;
}

/// @nodoc
class _$_Idle<T> with DiagnosticableTreeMixin implements _Idle<T> {
  const _$_Idle();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseState<$T>.idle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ResponseState<$T>.idle'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Idle<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Exception? ex) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Exception? ex)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Data<T> value) $default, {
    required TResult Function(_Idle<T> value) idle,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_ErrorDetails<T> value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Data<T> value)? $default, {
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle<T> implements ResponseState<T> {
  const factory _Idle() = _$_Idle<T>;
}

/// @nodoc
abstract class _$LoadingCopyWith<T, $Res> {
  factory _$LoadingCopyWith(
          _Loading<T> value, $Res Function(_Loading<T>) then) =
      __$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<T, $Res>
    extends _$ResponseStateCopyWithImpl<T, $Res>
    implements _$LoadingCopyWith<T, $Res> {
  __$LoadingCopyWithImpl(_Loading<T> _value, $Res Function(_Loading<T>) _then)
      : super(_value, (v) => _then(v as _Loading<T>));

  @override
  _Loading<T> get _value => super._value as _Loading<T>;
}

/// @nodoc
class _$_Loading<T> with DiagnosticableTreeMixin implements _Loading<T> {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseState<$T>.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ResponseState<$T>.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Exception? ex) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Exception? ex)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Data<T> value) $default, {
    required TResult Function(_Idle<T> value) idle,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_ErrorDetails<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Data<T> value)? $default, {
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements ResponseState<T> {
  const factory _Loading() = _$_Loading<T>;
}

/// @nodoc
abstract class _$ErrorDetailsCopyWith<T, $Res> {
  factory _$ErrorDetailsCopyWith(
          _ErrorDetails<T> value, $Res Function(_ErrorDetails<T>) then) =
      __$ErrorDetailsCopyWithImpl<T, $Res>;
  $Res call({Exception? ex});
}

/// @nodoc
class __$ErrorDetailsCopyWithImpl<T, $Res>
    extends _$ResponseStateCopyWithImpl<T, $Res>
    implements _$ErrorDetailsCopyWith<T, $Res> {
  __$ErrorDetailsCopyWithImpl(
      _ErrorDetails<T> _value, $Res Function(_ErrorDetails<T>) _then)
      : super(_value, (v) => _then(v as _ErrorDetails<T>));

  @override
  _ErrorDetails<T> get _value => super._value as _ErrorDetails<T>;

  @override
  $Res call({
    Object? ex = freezed,
  }) {
    return _then(_ErrorDetails<T>(
      ex: ex == freezed
          ? _value.ex
          : ex // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc
class _$_ErrorDetails<T>
    with DiagnosticableTreeMixin
    implements _ErrorDetails<T> {
  const _$_ErrorDetails({this.ex});

  @override
  final Exception? ex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseState<$T>.error(ex: $ex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseState<$T>.error'))
      ..add(DiagnosticsProperty('ex', ex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorDetails<T> &&
            (identical(other.ex, ex) ||
                const DeepCollectionEquality().equals(other.ex, ex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ex);

  @JsonKey(ignore: true)
  @override
  _$ErrorDetailsCopyWith<T, _ErrorDetails<T>> get copyWith =>
      __$ErrorDetailsCopyWithImpl<T, _ErrorDetails<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Exception? ex) error,
  }) {
    return error(ex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Exception? ex)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(ex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Data<T> value) $default, {
    required TResult Function(_Idle<T> value) idle,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_ErrorDetails<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Data<T> value)? $default, {
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorDetails<T> implements ResponseState<T> {
  const factory _ErrorDetails({Exception? ex}) = _$_ErrorDetails<T>;

  Exception? get ex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorDetailsCopyWith<T, _ErrorDetails<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
