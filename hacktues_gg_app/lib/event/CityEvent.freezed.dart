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

  _UploadCityWithId updateCity(City newCity) {
    return _UploadCityWithId(
      newCity,
    );
  }
}

/// @nodoc
const $CityEvent = _$CityEventTearOff();

/// @nodoc
mixin _$CityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchCityWithId,
    required TResult Function(City newCity) updateCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchCityWithId,
    TResult Function(City newCity)? updateCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCityWithId value) fetchCityWithId,
    required TResult Function(_UploadCityWithId value) updateCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCityWithId value)? fetchCityWithId,
    TResult Function(_UploadCityWithId value)? updateCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityEventCopyWith<$Res> {
  factory $CityEventCopyWith(CityEvent value, $Res Function(CityEvent) then) =
      _$CityEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CityEventCopyWithImpl<$Res> implements $CityEventCopyWith<$Res> {
  _$CityEventCopyWithImpl(this._value, this._then);

  final CityEvent _value;
  // ignore: unused_field
  final $Res Function(CityEvent) _then;
}

/// @nodoc
abstract class _$FetchCityWithIdCopyWith<$Res> {
  factory _$FetchCityWithIdCopyWith(
          _FetchCityWithId value, $Res Function(_FetchCityWithId) then) =
      __$FetchCityWithIdCopyWithImpl<$Res>;
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
class _$_FetchCityWithId implements _FetchCityWithId {
  const _$_FetchCityWithId(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CityEvent.fetchCityWithId(id: $id)';
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
    required TResult Function(City newCity) updateCity,
  }) {
    return fetchCityWithId(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchCityWithId,
    TResult Function(City newCity)? updateCity,
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
    required TResult Function(_UploadCityWithId value) updateCity,
  }) {
    return fetchCityWithId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCityWithId value)? fetchCityWithId,
    TResult Function(_UploadCityWithId value)? updateCity,
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

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchCityWithIdCopyWith<_FetchCityWithId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UploadCityWithIdCopyWith<$Res> {
  factory _$UploadCityWithIdCopyWith(
          _UploadCityWithId value, $Res Function(_UploadCityWithId) then) =
      __$UploadCityWithIdCopyWithImpl<$Res>;
  $Res call({City newCity});

  $CityCopyWith<$Res> get newCity;
}

/// @nodoc
class __$UploadCityWithIdCopyWithImpl<$Res>
    extends _$CityEventCopyWithImpl<$Res>
    implements _$UploadCityWithIdCopyWith<$Res> {
  __$UploadCityWithIdCopyWithImpl(
      _UploadCityWithId _value, $Res Function(_UploadCityWithId) _then)
      : super(_value, (v) => _then(v as _UploadCityWithId));

  @override
  _UploadCityWithId get _value => super._value as _UploadCityWithId;

  @override
  $Res call({
    Object? newCity = freezed,
  }) {
    return _then(_UploadCityWithId(
      newCity == freezed
          ? _value.newCity
          : newCity // ignore: cast_nullable_to_non_nullable
              as City,
    ));
  }

  @override
  $CityCopyWith<$Res> get newCity {
    return $CityCopyWith<$Res>(_value.newCity, (value) {
      return _then(_value.copyWith(newCity: value));
    });
  }
}

/// @nodoc
class _$_UploadCityWithId implements _UploadCityWithId {
  const _$_UploadCityWithId(this.newCity);

  @override
  final City newCity;

  @override
  String toString() {
    return 'CityEvent.updateCity(newCity: $newCity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadCityWithId &&
            (identical(other.newCity, newCity) ||
                const DeepCollectionEquality().equals(other.newCity, newCity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newCity);

  @JsonKey(ignore: true)
  @override
  _$UploadCityWithIdCopyWith<_UploadCityWithId> get copyWith =>
      __$UploadCityWithIdCopyWithImpl<_UploadCityWithId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchCityWithId,
    required TResult Function(City newCity) updateCity,
  }) {
    return updateCity(newCity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchCityWithId,
    TResult Function(City newCity)? updateCity,
    required TResult orElse(),
  }) {
    if (updateCity != null) {
      return updateCity(newCity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCityWithId value) fetchCityWithId,
    required TResult Function(_UploadCityWithId value) updateCity,
  }) {
    return updateCity(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCityWithId value)? fetchCityWithId,
    TResult Function(_UploadCityWithId value)? updateCity,
    required TResult orElse(),
  }) {
    if (updateCity != null) {
      return updateCity(this);
    }
    return orElse();
  }
}

abstract class _UploadCityWithId implements CityEvent {
  const factory _UploadCityWithId(City newCity) = _$_UploadCityWithId;

  City get newCity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UploadCityWithIdCopyWith<_UploadCityWithId> get copyWith =>
      throw _privateConstructorUsedError;
}
