import 'package:freezed_annotation/freezed_annotation.dart';

import 'GeographicArea.dart';

part 'City.freezed.dart';

part 'City.g.dart';

@freezed
class City with _$City {
  @Implements(GeographicArea)
  const factory City(
      {
      required String id,
      required String name,
      required int population,
      required int buildingCount,
      required int factoryCount,
      required int houseCount,
      required double money,
      required int moneyMultiplier,
      required int pollution,
      required int pollutionMultiplier,
      required int power,
      required int powerMultiplier,
      required String updatedAt}) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
