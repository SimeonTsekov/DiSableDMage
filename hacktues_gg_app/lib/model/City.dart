import 'package:freezed_annotation/freezed_annotation.dart';

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
      required double money_multiplier,
      required double pollution,
      required double pollution_multiplier,
      required double power,
      required double power_multiplier,
      required String updated_at}) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
