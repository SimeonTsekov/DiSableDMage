import 'package:freezed_annotation/freezed_annotation.dart';

part 'CityEvent.freezed.dart';

@freezed
class CityEvent with _$CityEvent {
  const factory CityEvent.fetchCityWithId(String id) = _FetchCityWithId;

  const factory CityEvent.uploadCityWithId(String id) = _UploadCityWithId;
}
