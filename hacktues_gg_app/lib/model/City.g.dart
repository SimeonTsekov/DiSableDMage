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
    buildingCount: json['buildingCount'] as int,
    factoryCount: json['factoryCount'] as int,
    houseCount: json['houseCount'] as int,
    money: (json['money'] as num).toDouble(),
    moneyMultiplier: json['moneyMultiplier'] as int,
    pollution: json['pollution'] as int,
    pollutionMultiplier: json['pollutionMultiplier'] as int,
    power: json['power'] as int,
    powerMultiplier: json['powerMultiplier'] as int,
    updatedAt: json['updatedAt'] as String,
  );
}

Map<String, dynamic> _$_$_CityToJson(_$_City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'population': instance.population,
      'buildingCount': instance.buildingCount,
      'factoryCount': instance.factoryCount,
      'houseCount': instance.houseCount,
      'money': instance.money,
      'moneyMultiplier': instance.moneyMultiplier,
      'pollution': instance.pollution,
      'pollutionMultiplier': instance.pollutionMultiplier,
      'power': instance.power,
      'powerMultiplier': instance.powerMultiplier,
      'updatedAt': instance.updatedAt,
    };
