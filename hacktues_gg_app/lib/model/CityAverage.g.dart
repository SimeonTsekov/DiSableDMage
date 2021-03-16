// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CityAverage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CityAverage _$_$_CityAverageFromJson(Map<String, dynamic> json) {
  return _$_CityAverage(
    id: json['id'] as String,
    building_count_avg: (json['building_count_avg'] as num).toDouble(),
    factory_count_avg: (json['factory_count_avg'] as num).toDouble(),
    house_count_avg: (json['house_count_avg'] as num).toDouble(),
    money_avg: (json['money_avg'] as num).toDouble(),
    pollution_avg: (json['pollution_avg'] as num).toDouble(),
    population_avg: (json['population_avg'] as num).toDouble(),
    power_avg: (json['power_avg'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_CityAverageToJson(_$_CityAverage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'building_count_avg': instance.building_count_avg,
      'factory_count_avg': instance.factory_count_avg,
      'house_count_avg': instance.house_count_avg,
      'money_avg': instance.money_avg,
      'pollution_avg': instance.pollution_avg,
      'population_avg': instance.population_avg,
      'power_avg': instance.power_avg,
    };
