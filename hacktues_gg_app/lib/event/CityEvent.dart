import 'package:freezed_annotation/freezed_annotation.dart';

part 'CityEvent.freezed.dart';

@freezed
class CityEvent with _$CityEvent {
  const factory CityEvent.fetchCityWithId(String id) = _FetchCityWithId;

  const factory CityEvent.fetchAverageCityWithId(String id) =
      _FetchAverageCityWithId;

  const factory CityEvent.fetchAverageAllCities() =
    _FetchAverageAllCities;

  const factory CityEvent.uploadCityWithId(String id) = _UploadCityWithId;
}
