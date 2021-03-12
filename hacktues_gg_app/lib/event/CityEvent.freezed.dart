// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'CityEvent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CityEventTearOff {
  const _$CityEventTearOff();

  _FetchCityWithId fetchCityWithId(String id) {
    return _FetchCityWithId(
      id,
    );
  }
}

/// @nodoc
const $CityEvent = _$CityEventTearOff();

/// @nodoc
mixin _$CityEvent {
  String get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchCityWithId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchCityWithId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCityWithId value) fetchCityWithId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCityWithId value)? fetchCityWithId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityEventCopyWith<CityEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityEventCopyWith<$Res> {
  factory $CityEventCopyWith(CityEvent value, $Res Function(CityEvent) then) =
      _$CityEventCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$CityEventCopyWithImpl<$Res> implements $CityEventCopyWith<$Res> {
  _$CityEventCopyWithImpl(this._value, this._then);

  final CityEvent _value;
  // ignore: unused_field
  final $Res Function(CityEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FetchCityWithIdCopyWith<$Res>
    implements $CityEventCopyWith<$Res> {
  factory _$FetchCityWithIdCopyWith(
          _FetchCityWithId value, $Res Function(_FetchCityWithId) then) =
      __$FetchCityWithIdCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$FetchCityWithIdCopyWithImpl<$Res> extends _$CityEventCopyWithImpl<$Res>
    implements _$FetchCityWithIdCopyWith<$Res> {
  __$FetchCityWithIdCopyWithImpl(
      _FetchCityWithId _value, $Res Function(_FetchCityWithId) _then)
      : super(_value, (v) => _then(v as _FetchCityWithId));

  @override
  _FetchCityWithId get _value => super._value as _FetchCityWithId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_FetchCityWithId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_FetchCityWithId
    with DiagnosticableTreeMixin
    implements _FetchCityWithId {
  const _$_FetchCityWithId(this.id);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CityEvent.fetchCityWithId(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CityEvent.fetchCityWithId'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchCityWithId &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$FetchCityWithIdCopyWith<_FetchCityWithId> get copyWith =>
      __$FetchCityWithIdCopyWithImpl<_FetchCityWithId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchCityWithId,
  }) {
    return fetchCityWithId(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchCityWithId,
    required TResult orElse(),
  }) {
    if (fetchCityWithId != null) {
      return fetchCityWithId(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCityWithId value) fetchCityWithId,
  }) {
    return fetchCityWithId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCityWithId value)? fetchCityWithId,
    required TResult orElse(),
  }) {
    if (fetchCityWithId != null) {
      return fetchCityWithId(this);
    }
    return orElse();
  }
}

abstract class _FetchCityWithId implements CityEvent {
  const factory _FetchCityWithId(String id) = _$_FetchCityWithId;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FetchCityWithIdCopyWith<_FetchCityWithId> get copyWith =>
      throw _privateConstructorUsedError;
}
