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

  _FetchAverageWithAll fetchAverageCityWithAllCities(String id) {
    return _FetchAverageWithAll(
      id,
    );
  }
}

/// @nodoc
const $AverageCityEvent = _$AverageCityEventTearOff();

/// @nodoc
mixin _$AverageCityEvent {
  String get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchAverageCityWithAllCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchAverageCityWithAllCities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAverageWithAll value)
        fetchAverageCityWithAllCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAverageWithAll value)? fetchAverageCityWithAllCities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AverageCityEventCopyWith<AverageCityEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AverageCityEventCopyWith<$Res> {
  factory $AverageCityEventCopyWith(
          AverageCityEvent value, $Res Function(AverageCityEvent) then) =
      _$AverageCityEventCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$AverageCityEventCopyWithImpl<$Res>
    implements $AverageCityEventCopyWith<$Res> {
  _$AverageCityEventCopyWithImpl(this._value, this._then);

  final AverageCityEvent _value;
  // ignore: unused_field
  final $Res Function(AverageCityEvent) _then;

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
abstract class _$FetchAverageWithAllCopyWith<$Res>
    implements $AverageCityEventCopyWith<$Res> {
  factory _$FetchAverageWithAllCopyWith(_FetchAverageWithAll value,
          $Res Function(_FetchAverageWithAll) then) =
      __$FetchAverageWithAllCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$FetchAverageWithAllCopyWithImpl<$Res>
    extends _$AverageCityEventCopyWithImpl<$Res>
    implements _$FetchAverageWithAllCopyWith<$Res> {
  __$FetchAverageWithAllCopyWithImpl(
      _FetchAverageWithAll _value, $Res Function(_FetchAverageWithAll) _then)
      : super(_value, (v) => _then(v as _FetchAverageWithAll));

  @override
  _FetchAverageWithAll get _value => super._value as _FetchAverageWithAll;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_FetchAverageWithAll(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_FetchAverageWithAll implements _FetchAverageWithAll {
  const _$_FetchAverageWithAll(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'AverageCityEvent.fetchAverageCityWithAllCities(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchAverageWithAll &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$FetchAverageWithAllCopyWith<_FetchAverageWithAll> get copyWith =>
      __$FetchAverageWithAllCopyWithImpl<_FetchAverageWithAll>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchAverageCityWithAllCities,
  }) {
    return fetchAverageCityWithAllCities(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchAverageCityWithAllCities,
    required TResult orElse(),
  }) {
    if (fetchAverageCityWithAllCities != null) {
      return fetchAverageCityWithAllCities(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAverageWithAll value)
        fetchAverageCityWithAllCities,
  }) {
    return fetchAverageCityWithAllCities(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAverageWithAll value)? fetchAverageCityWithAllCities,
    required TResult orElse(),
  }) {
    if (fetchAverageCityWithAllCities != null) {
      return fetchAverageCityWithAllCities(this);
    }
    return orElse();
  }
}

abstract class _FetchAverageWithAll implements AverageCityEvent {
  const factory _FetchAverageWithAll(String id) = _$_FetchAverageWithAll;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FetchAverageWithAllCopyWith<_FetchAverageWithAll> get copyWith =>
      throw _privateConstructorUsedError;
}
