// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'City.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CityTearOff {
  const _$CityTearOff();

  _City call(
      {required String name,
      required int population,
      required int buildingsCount}) {
    return _City(
      name: name,
      population: population,
      buildingsCount: buildingsCount,
    );
  }
}

/// @nodoc
const $City = _$CityTearOff();

/// @nodoc
mixin _$City {
  String get name => throw _privateConstructorUsedError;
  int get population => throw _privateConstructorUsedError;
  int get buildingsCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res>;
  $Res call({String name, int population, int buildingsCount});
}

/// @nodoc
class _$CityCopyWithImpl<$Res> implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  final City _value;
  // ignore: unused_field
  final $Res Function(City) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? population = freezed,
    Object? buildingsCount = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      population: population == freezed
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      buildingsCount: buildingsCount == freezed
          ? _value.buildingsCount
          : buildingsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CityCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$CityCopyWith(_City value, $Res Function(_City) then) =
      __$CityCopyWithImpl<$Res>;
  @override
  $Res call({String name, int population, int buildingsCount});
}

/// @nodoc
class __$CityCopyWithImpl<$Res> extends _$CityCopyWithImpl<$Res>
    implements _$CityCopyWith<$Res> {
  __$CityCopyWithImpl(_City _value, $Res Function(_City) _then)
      : super(_value, (v) => _then(v as _City));

  @override
  _City get _value => super._value as _City;

  @override
  $Res call({
    Object? name = freezed,
    Object? population = freezed,
    Object? buildingsCount = freezed,
  }) {
    return _then(_City(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      population: population == freezed
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      buildingsCount: buildingsCount == freezed
          ? _value.buildingsCount
          : buildingsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@Implements(GeographicArea)

/// @nodoc
class _$_City implements _City {
  const _$_City(
      {required this.name,
      required this.population,
      required this.buildingsCount});

  @override
  final String name;
  @override
  final int population;
  @override
  final int buildingsCount;

  @override
  String toString() {
    return 'City(name: $name, population: $population, buildingsCount: $buildingsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _City &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.population, population) ||
                const DeepCollectionEquality()
                    .equals(other.population, population)) &&
            (identical(other.buildingsCount, buildingsCount) ||
                const DeepCollectionEquality()
                    .equals(other.buildingsCount, buildingsCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(population) ^
      const DeepCollectionEquality().hash(buildingsCount);

  @JsonKey(ignore: true)
  @override
  _$CityCopyWith<_City> get copyWith =>
      __$CityCopyWithImpl<_City>(this, _$identity);
}

abstract class _City implements City, GeographicArea {
  const factory _City(
      {required String name,
      required int population,
      required int buildingsCount}) = _$_City;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get population => throw _privateConstructorUsedError;
  @override
  int get buildingsCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CityCopyWith<_City> get copyWith => throw _privateConstructorUsedError;
}
