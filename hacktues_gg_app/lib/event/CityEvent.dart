import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hacktues_gg_app/model/City.dart';

part 'CityEvent.freezed.dart';

@freezed
class CityEvent with _$CityEvent {
  const factory CityEvent.fetchCityWithId(String id) = _FetchCityWithId;

  const factory CityEvent.updateCity(City newCity) = _UploadCityWithId;
}
