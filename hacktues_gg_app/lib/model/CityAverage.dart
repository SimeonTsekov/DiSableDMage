import 'package:freezed_annotation/freezed_annotation.dart';

part 'CityAverage.freezed.dart';
part 'CityAverage.g.dart';

@freezed
class CityAverage with _$CityAverage {
  const factory CityAverage(
      {required String id,
      required double buildingCountAverage,
      required double factoryCountAverage,
      required double houseCountAverage,
      required double moneyAverage,
      required double pollutionAverage,
      required double populationAverage,
      required double powerAverage}) = _CityAverage;

  factory CityAverage.fromJson(Map<String, dynamic> json) =>
      _$CityAverageFromJson(json);
}
