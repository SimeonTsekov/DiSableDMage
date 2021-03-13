// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'City.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_City _$_$_CityFromJson(Map<String, dynamic> json) {
  return _$_City(
    id: json['id'] as String,
    name: json['name'] as String,
    population: json['population'] as int,
    building_count: json['building_count'] as int,
    factory_count: json['factory_count'] as int,
    house_count: json['house_count'] as int,
    money: (json['money'] as num).toDouble(),
    money_multiplier: (json['money_multiplier'] as num).toDouble(),
    pollution: (json['pollution'] as num).toDouble(),
    pollution_multiplier: (json['pollution_multiplier'] as num).toDouble(),
    power: (json['power'] as num).toDouble(),
    power_multiplier: (json['power_multiplier'] as num).toDouble(),
    updated_at: (json['updated_at'].toDate() as DateTime).toString(),
  );
}

Map<String, dynamic> _$_$_CityToJson(_$_City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'population': instance.population,
      'building_count': instance.building_count,
      'factory_count': instance.factory_count,
      'house_count': instance.house_count,
      'money': instance.money,
      'money_multiplier': instance.money_multiplier,
      'pollution': instance.pollution,
      'pollution_multiplier': instance.pollution_multiplier,
      'power': instance.power,
      'power_multiplier': instance.power_multiplier,
      'updated_at': instance.updated_at,
    };
