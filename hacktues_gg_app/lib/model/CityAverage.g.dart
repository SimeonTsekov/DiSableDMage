// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CityAverage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CityAverage _$_$_CityAverageFromJson(Map<String, dynamic> json) {
  return _$_CityAverage(
    id: json['id'] as String,
    buildingCountAverage: (json['buildingCountAverage'] as num).toDouble(),
    factoryCountAverage: (json['factoryCountAverage'] as num).toDouble(),
    houseCountAverage: (json['houseCountAverage'] as num).toDouble(),
    moneyAverage: (json['moneyAverage'] as num).toDouble(),
    pollutionAverage: (json['pollutionAverage'] as num).toDouble(),
    populationAverage: (json['populationAverage'] as num).toDouble(),
    powerAverage: (json['powerAverage'] as num).toDouble(),
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
