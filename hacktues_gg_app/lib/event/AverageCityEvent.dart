import 'package:freezed_annotation/freezed_annotation.dart';

part 'AverageCityEvent.freezed.dart';

@freezed
class AverageCityEvent with _$AverageCityEvent {
  const factory AverageCityEvent.fetchAverageCityWithAllCities(String id) =
      _FetchAverageWithAll;
}
