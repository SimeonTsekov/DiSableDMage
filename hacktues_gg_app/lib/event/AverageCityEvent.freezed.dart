// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'AverageCityEvent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AverageCityEventTearOff {
  const _$AverageCityEventTearOff();

  _FetchAverageCityWithId fetchAverageCityWithId(String id) {
    return _FetchAverageCityWithId(
      id,
    );
  }

  _FetchAverageAllCities fetchAverageAllCities() {
    return const _FetchAverageAllCities();
  }
}

/// @nodoc
const $AverageCityEvent = _$AverageCityEventTearOff();

/// @nodoc
mixin _$AverageCityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchAverageCityWithId,
    required TResult Function() fetchAverageAllCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchAverageCityWithId,
    TResult Function()? fetchAverageAllCities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAverageCityWithId value)
        fetchAverageCityWithId,
    required TResult Function(_FetchAverageAllCities value)
        fetchAverageAllCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAverageCityWithId value)? fetchAverageCityWithId,
    TResult Function(_FetchAverageAllCities value)? fetchAverageAllCities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AverageCityEventCopyWith<$Res> {
  factory $AverageCityEventCopyWith(
          AverageCityEvent value, $Res Function(AverageCityEvent) then) =
      _$AverageCityEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AverageCityEventCopyWithImpl<$Res>
    implements $AverageCityEventCopyWith<$Res> {
  _$AverageCityEventCopyWithImpl(this._value, this._then);

  final AverageCityEvent _value;
  // ignore: unused_field
  final $Res Function(AverageCityEvent) _then;
}

/// @nodoc
abstract class _$FetchAverageCityWithIdCopyWith<$Res> {
  factory _$FetchAverageCityWithIdCopyWith(_FetchAverageCityWithId value,
          $Res Function(_FetchAverageCityWithId) then) =
      __$FetchAverageCityWithIdCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$FetchAverageCityWithIdCopyWithImpl<$Res>
    extends _$AverageCityEventCopyWithImpl<$Res>
    implements _$FetchAverageCityWithIdCopyWith<$Res> {
  __$FetchAverageCityWithIdCopyWithImpl(_FetchAverageCityWithId _value,
      $Res Function(_FetchAverageCityWithId) _then)
      : super(_value, (v) => _then(v as _FetchAverageCityWithId));

  @override
  _FetchAverageCityWithId get _value => super._value as _FetchAverageCityWithId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_FetchAverageCityWithId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_FetchAverageCityWithId implements _FetchAverageCityWithId {
  const _$_FetchAverageCityWithId(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'AverageCityEvent.fetchAverageCityWithId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchAverageCityWithId &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$FetchAverageCityWithIdCopyWith<_FetchAverageCityWithId> get copyWith =>
      __$FetchAverageCityWithIdCopyWithImpl<_FetchAverageCityWithId>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchAverageCityWithId,
    required TResult Function() fetchAverageAllCities,
  }) {
    return fetchAverageCityWithId(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchAverageCityWithId,
    TResult Function()? fetchAverageAllCities,
    required TResult orElse(),
  }) {
    if (fetchAverageCityWithId != null) {
      return fetchAverageCityWithId(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAverageCityWithId value)
        fetchAverageCityWithId,
    required TResult Function(_FetchAverageAllCities value)
        fetchAverageAllCities,
  }) {
    return fetchAverageCityWithId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAverageCityWithId value)? fetchAverageCityWithId,
    TResult Function(_FetchAverageAllCities value)? fetchAverageAllCities,
    required TResult orElse(),
  }) {
    if (fetchAverageCityWithId != null) {
      return fetchAverageCityWithId(this);
    }
    return orElse();
  }
}

abstract class _FetchAverageCityWithId implements AverageCityEvent {
  const factory _FetchAverageCityWithId(String id) = _$_FetchAverageCityWithId;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchAverageCityWithIdCopyWith<_FetchAverageCityWithId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchAverageAllCitiesCopyWith<$Res> {
  factory _$FetchAverageAllCitiesCopyWith(_FetchAverageAllCities value,
          $Res Function(_FetchAverageAllCities) then) =
      __$FetchAverageAllCitiesCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchAverageAllCitiesCopyWithImpl<$Res>
    extends _$AverageCityEventCopyWithImpl<$Res>
    implements _$FetchAverageAllCitiesCopyWith<$Res> {
  __$FetchAverageAllCitiesCopyWithImpl(_FetchAverageAllCities _value,
      $Res Function(_FetchAverageAllCities) _then)
      : super(_value, (v) => _then(v as _FetchAverageAllCities));

  @override
  _FetchAverageAllCities get _value => super._value as _FetchAverageAllCities;
}

/// @nodoc
class _$_FetchAverageAllCities implements _FetchAverageAllCities {
  const _$_FetchAverageAllCities();

  @override
  String toString() {
    return 'AverageCityEvent.fetchAverageAllCities()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchAverageAllCities);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchAverageCityWithId,
    required TResult Function() fetchAverageAllCities,
  }) {
    return fetchAverageAllCities();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchAverageCityWithId,
    TResult Function()? fetchAverageAllCities,
    required TResult orElse(),
  }) {
    if (fetchAverageAllCities != null) {
      return fetchAverageAllCities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAverageCityWithId value)
        fetchAverageCityWithId,
    required TResult Function(_FetchAverageAllCities value)
        fetchAverageAllCities,
  }) {
    return fetchAverageAllCities(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAverageCityWithId value)? fetchAverageCityWithId,
    TResult Function(_FetchAverageAllCities value)? fetchAverageAllCities,
    required TResult orElse(),
  }) {
    if (fetchAverageAllCities != null) {
      return fetchAverageAllCities(this);
    }
    return orElse();
  }
}

abstract class _FetchAverageAllCities implements AverageCityEvent {
  const factory _FetchAverageAllCities() = _$_FetchAverageAllCities;
}
