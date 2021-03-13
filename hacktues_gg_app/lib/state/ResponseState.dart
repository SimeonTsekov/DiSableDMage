import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ResponseState.freezed.dart';

@freezed
class ResponseState<T> with _$ResponseState<T> {
  const factory ResponseState(T value) = _Data<T>;
  const factory ResponseState.idle() = _Idle<T>;
  const factory ResponseState.loading() = _Loading<T>;
  const factory ResponseState.error({Exception? ex}) = _ErrorDetails<T>;
}
