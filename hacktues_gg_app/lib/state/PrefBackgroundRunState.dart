import 'package:freezed_annotation/freezed_annotation.dart';

part 'PrefBackgroundRunState.freezed.dart';

@freezed
class PrefBackgroundRunState with _$PrefBackgroundRunState {
  const factory PrefBackgroundRunState.on() = _On;

  const factory PrefBackgroundRunState.off() = _Off;
}
