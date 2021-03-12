import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'CityEvent.freezed.dart';

@freezed
class CityEvent with _$CityEvent {
  const factory CityEvent.fetchCityWithId(String id) = _FetchCityWithId;

  const factory CityEvent.fetchAverageCityWithId(String id) = _FetchAverageCityWithId;
}