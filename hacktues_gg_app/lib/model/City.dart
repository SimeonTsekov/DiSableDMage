import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sembast/timestamp.dart';

import 'GeographicArea.dart';

part 'City.freezed.dart';

part 'City.g.dart';

@freezed
class City with _$City {
  @Implements(GeographicArea)
  const factory City(
      {required String id,
      required String name,
      required int population,
      required int building_count,
      required int factory_count,
      required int house_count,
      required double money,
      required int money_multiplier,
      required int pollution,
      required int pollution_multiplier,
      required int power,
      required int power_multiplier,
      required String updated_at}) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
