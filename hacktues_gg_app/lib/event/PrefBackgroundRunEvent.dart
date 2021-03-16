import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'PrefBackgroundRunEvent.freezed.dart';

@freezed
class PrefBackgroundRunEvent with _$PrefBackgroundRunEvent {
  const factory PrefBackgroundRunEvent.toggle(bool toggle) = _Toggle;
}
