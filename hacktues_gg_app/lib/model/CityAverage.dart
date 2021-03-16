import 'package:freezed_annotation/freezed_annotation.dart';

part 'CityAverage.freezed.dart';
part 'CityAverage.g.dart';

@freezed
class CityAverage with _$CityAverage {
  const factory CityAverage(
      {required String id,
      required double building_count_avg,
      required double factory_count_avg,
      required double house_count_avg,
      required double money_avg,
      required double pollution_avg,
      required double population_avg,
      required double power_avg}) = _CityAverage;

  factory CityAverage.fromJson(Map<String, dynamic> json) =>
      _$CityAverageFromJson(json);
}
