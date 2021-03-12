// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CityAverage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CityAverage _$_$_CityAverageFromJson(Map<String, dynamic> json) {
  return _$_CityAverage(
    id: json['id'] as String,
    buildingCountAverage: json['buildingCountAverage'] as int,
    factoryCountAverage: json['factoryCountAverage'] as int,
    houseCountAverage: json['houseCountAverage'] as int,
    moneyAverage: (json['moneyAverage'] as num).toDouble(),
    pollutionAverage: json['pollutionAverage'] as int,
    populationAverage: json['populationAverage'] as int,
    powerAverage: json['powerAverage'] as int,
  );
}

Map<String, dynamic> _$_$_CityAverageToJson(_$_CityAverage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'buildingCountAverage': instance.buildingCountAverage,
      'factoryCountAverage': instance.factoryCountAverage,
      'houseCountAverage': instance.houseCountAverage,
      'moneyAverage': instance.moneyAverage,
      'pollutionAverage': instance.pollutionAverage,
      'populationAverage': instance.populationAverage,
      'powerAverage': instance.powerAverage,
    };
