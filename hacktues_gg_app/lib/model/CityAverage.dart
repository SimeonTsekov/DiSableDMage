import 'package:freezed_annotation/freezed_annotation.dart';

part 'CityAverage.freezed.dart';
part 'CityAverage.g.dart';

@freezed
class CityAverage with _$CityAverage {
  const factory CityAverage(
      {required String id,
      required int buildingCountAverage,
      required int factoryCountAverage,
      required int houseCountAverage,
      required double moneyAverage,
      required int pollutionAverage,
      required int populationAverage,
      required int powerAverage}) = _CityAverage;

  factory CityAverage.fromJson(Map<String, dynamic> json) =>
      _$CityAverageFromJson(json);
}
