// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'PrefBackgroundRunEvent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PrefBackgroundRunEventTearOff {
  const _$PrefBackgroundRunEventTearOff();

  _Toggle toggle(bool toggle) {
    return _Toggle(
      toggle,
    );
  }
}

/// @nodoc
const $PrefBackgroundRunEvent = _$PrefBackgroundRunEventTearOff();

/// @nodoc
mixin _$PrefBackgroundRunEvent {
  bool get toggle => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool toggle) toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool toggle)? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Toggle value) toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Toggle value)? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrefBackgroundRunEventCopyWith<PrefBackgroundRunEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrefBackgroundRunEventCopyWith<$Res> {
  factory $PrefBackgroundRunEventCopyWith(PrefBackgroundRunEvent value,
          $Res Function(PrefBackgroundRunEvent) then) =
      _$PrefBackgroundRunEventCopyWithImpl<$Res>;
  $Res call({bool toggle});
}

/// @nodoc
class _$PrefBackgroundRunEventCopyWithImpl<$Res>
    implements $PrefBackgroundRunEventCopyWith<$Res> {
  _$PrefBackgroundRunEventCopyWithImpl(this._value, this._then);

  final PrefBackgroundRunEvent _value;
  // ignore: unused_field
  final $Res Function(PrefBackgroundRunEvent) _then;

  @override
  $Res call({
    Object? toggle = freezed,
  }) {
    return _then(_value.copyWith(
      toggle: toggle == freezed
          ? _value.toggle
          : toggle // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ToggleCopyWith<$Res>
    implements $PrefBackgroundRunEventCopyWith<$Res> {
  factory _$ToggleCopyWith(_Toggle value, $Res Function(_Toggle) then) =
      __$ToggleCopyWithImpl<$Res>;
  @override
  $Res call({bool toggle});
}

/// @nodoc
class __$ToggleCopyWithImpl<$Res>
    extends _$PrefBackgroundRunEventCopyWithImpl<$Res>
    implements _$ToggleCopyWith<$Res> {
  __$ToggleCopyWithImpl(_Toggle _value, $Res Function(_Toggle) _then)
      : super(_value, (v) => _then(v as _Toggle));

  @override
  _Toggle get _value => super._value as _Toggle;

  @override
  $Res call({
    Object? toggle = freezed,
  }) {
    return _then(_Toggle(
      toggle == freezed
          ? _value.toggle
          : toggle // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_Toggle with DiagnosticableTreeMixin implements _Toggle {
  const _$_Toggle(this.toggle);

  @override
  final bool toggle;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PrefBackgroundRunEvent.toggle(toggle: $toggle)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PrefBackgroundRunEvent.toggle'))
      ..add(DiagnosticsProperty('toggle', toggle));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Toggle &&
            (identical(other.toggle, toggle) ||
                const DeepCollectionEquality().equals(other.toggle, toggle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(toggle);

  @JsonKey(ignore: true)
  @override
  _$ToggleCopyWith<_Toggle> get copyWith =>
      __$ToggleCopyWithImpl<_Toggle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool toggle) toggle,
  }) {
    return toggle(this.toggle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool toggle)? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(this.toggle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Toggle value) toggle,
  }) {
    return toggle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Toggle value)? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(this);
    }
    return orElse();
  }
}

abstract class _Toggle implements PrefBackgroundRunEvent {
  const factory _Toggle(bool toggle) = _$_Toggle;

  @override
  bool get toggle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ToggleCopyWith<_Toggle> get copyWith => throw _privateConstructorUsedError;
}
