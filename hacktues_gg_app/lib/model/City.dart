import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'GeographicArea.dart';

part 'City.freezed.dart';

@freezed
class City with _$City {
  @Implements(GeographicArea)
  const factory City({
    required String name,
    required int population,
    required int buildingsCount
    // TODO: Fill
  }) = _City;
}