// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remote_config_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RemoteConfigEventTearOff {
  const _$RemoteConfigEventTearOff();

  _GetValues getValues() {
    return const _GetValues();
  }
}

/// @nodoc
const $RemoteConfigEvent = _$RemoteConfigEventTearOff();

/// @nodoc
mixin _$RemoteConfigEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getValues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetValues value) getValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetValues value)? getValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetValues value)? getValues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteConfigEventCopyWith<$Res> {
  factory $RemoteConfigEventCopyWith(
          RemoteConfigEvent value, $Res Function(RemoteConfigEvent) then) =
      _$RemoteConfigEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RemoteConfigEventCopyWithImpl<$Res>
    implements $RemoteConfigEventCopyWith<$Res> {
  _$RemoteConfigEventCopyWithImpl(this._value, this._then);

  final RemoteConfigEvent _value;
  // ignore: unused_field
  final $Res Function(RemoteConfigEvent) _then;
}

/// @nodoc
abstract class _$GetValuesCopyWith<$Res> {
  factory _$GetValuesCopyWith(
          _GetValues value, $Res Function(_GetValues) then) =
      __$GetValuesCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetValuesCopyWithImpl<$Res>
    extends _$RemoteConfigEventCopyWithImpl<$Res>
    implements _$GetValuesCopyWith<$Res> {
  __$GetValuesCopyWithImpl(_GetValues _value, $Res Function(_GetValues) _then)
      : super(_value, (v) => _then(v as _GetValues));

  @override
  _GetValues get _value => super._value as _GetValues;
}

/// @nodoc

class _$_GetValues implements _GetValues {
  const _$_GetValues();

  @override
  String toString() {
    return 'RemoteConfigEvent.getValues()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetValues);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getValues,
  }) {
    return getValues();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getValues,
  }) {
    return getValues?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getValues,
    required TResult orElse(),
  }) {
    if (getValues != null) {
      return getValues();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetValues value) getValues,
  }) {
    return getValues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetValues value)? getValues,
  }) {
    return getValues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetValues value)? getValues,
    required TResult orElse(),
  }) {
    if (getValues != null) {
      return getValues(this);
    }
    return orElse();
  }
}

abstract class _GetValues implements RemoteConfigEvent {
  const factory _GetValues() = _$_GetValues;
}

/// @nodoc
class _$RemoteConfigStateTearOff {
  const _$RemoteConfigStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _RemoteConfig remoteConfig({required NARemoteConfig naRemoteConfig}) {
    return _RemoteConfig(
      naRemoteConfig: naRemoteConfig,
    );
  }

  _RemoteConfigError remoteConfigError() {
    return const _RemoteConfigError();
  }
}

/// @nodoc
const $RemoteConfigState = _$RemoteConfigStateTearOff();

/// @nodoc
mixin _$RemoteConfigState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NARemoteConfig naRemoteConfig) remoteConfig,
    required TResult Function() remoteConfigError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NARemoteConfig naRemoteConfig)? remoteConfig,
    TResult Function()? remoteConfigError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NARemoteConfig naRemoteConfig)? remoteConfig,
    TResult Function()? remoteConfigError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RemoteConfig value) remoteConfig,
    required TResult Function(_RemoteConfigError value) remoteConfigError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RemoteConfig value)? remoteConfig,
    TResult Function(_RemoteConfigError value)? remoteConfigError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RemoteConfig value)? remoteConfig,
    TResult Function(_RemoteConfigError value)? remoteConfigError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteConfigStateCopyWith<$Res> {
  factory $RemoteConfigStateCopyWith(
          RemoteConfigState value, $Res Function(RemoteConfigState) then) =
      _$RemoteConfigStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RemoteConfigStateCopyWithImpl<$Res>
    implements $RemoteConfigStateCopyWith<$Res> {
  _$RemoteConfigStateCopyWithImpl(this._value, this._then);

  final RemoteConfigState _value;
  // ignore: unused_field
  final $Res Function(RemoteConfigState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$RemoteConfigStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RemoteConfigState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NARemoteConfig naRemoteConfig) remoteConfig,
    required TResult Function() remoteConfigError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NARemoteConfig naRemoteConfig)? remoteConfig,
    TResult Function()? remoteConfigError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NARemoteConfig naRemoteConfig)? remoteConfig,
    TResult Function()? remoteConfigError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RemoteConfig value) remoteConfig,
    required TResult Function(_RemoteConfigError value) remoteConfigError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RemoteConfig value)? remoteConfig,
    TResult Function(_RemoteConfigError value)? remoteConfigError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RemoteConfig value)? remoteConfig,
    TResult Function(_RemoteConfigError value)? remoteConfigError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RemoteConfigState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$RemoteConfigCopyWith<$Res> {
  factory _$RemoteConfigCopyWith(
          _RemoteConfig value, $Res Function(_RemoteConfig) then) =
      __$RemoteConfigCopyWithImpl<$Res>;
  $Res call({NARemoteConfig naRemoteConfig});

  $NARemoteConfigCopyWith<$Res> get naRemoteConfig;
}

/// @nodoc
class __$RemoteConfigCopyWithImpl<$Res>
    extends _$RemoteConfigStateCopyWithImpl<$Res>
    implements _$RemoteConfigCopyWith<$Res> {
  __$RemoteConfigCopyWithImpl(
      _RemoteConfig _value, $Res Function(_RemoteConfig) _then)
      : super(_value, (v) => _then(v as _RemoteConfig));

  @override
  _RemoteConfig get _value => super._value as _RemoteConfig;

  @override
  $Res call({
    Object? naRemoteConfig = freezed,
  }) {
    return _then(_RemoteConfig(
      naRemoteConfig: naRemoteConfig == freezed
          ? _value.naRemoteConfig
          : naRemoteConfig // ignore: cast_nullable_to_non_nullable
              as NARemoteConfig,
    ));
  }

  @override
  $NARemoteConfigCopyWith<$Res> get naRemoteConfig {
    return $NARemoteConfigCopyWith<$Res>(_value.naRemoteConfig, (value) {
      return _then(_value.copyWith(naRemoteConfig: value));
    });
  }
}

/// @nodoc

class _$_RemoteConfig implements _RemoteConfig {
  const _$_RemoteConfig({required this.naRemoteConfig});

  @override
  final NARemoteConfig naRemoteConfig;

  @override
  String toString() {
    return 'RemoteConfigState.remoteConfig(naRemoteConfig: $naRemoteConfig)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteConfig &&
            const DeepCollectionEquality()
                .equals(other.naRemoteConfig, naRemoteConfig));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(naRemoteConfig));

  @JsonKey(ignore: true)
  @override
  _$RemoteConfigCopyWith<_RemoteConfig> get copyWith =>
      __$RemoteConfigCopyWithImpl<_RemoteConfig>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NARemoteConfig naRemoteConfig) remoteConfig,
    required TResult Function() remoteConfigError,
  }) {
    return remoteConfig(naRemoteConfig);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NARemoteConfig naRemoteConfig)? remoteConfig,
    TResult Function()? remoteConfigError,
  }) {
    return remoteConfig?.call(naRemoteConfig);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NARemoteConfig naRemoteConfig)? remoteConfig,
    TResult Function()? remoteConfigError,
    required TResult orElse(),
  }) {
    if (remoteConfig != null) {
      return remoteConfig(naRemoteConfig);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RemoteConfig value) remoteConfig,
    required TResult Function(_RemoteConfigError value) remoteConfigError,
  }) {
    return remoteConfig(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RemoteConfig value)? remoteConfig,
    TResult Function(_RemoteConfigError value)? remoteConfigError,
  }) {
    return remoteConfig?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RemoteConfig value)? remoteConfig,
    TResult Function(_RemoteConfigError value)? remoteConfigError,
    required TResult orElse(),
  }) {
    if (remoteConfig != null) {
      return remoteConfig(this);
    }
    return orElse();
  }
}

abstract class _RemoteConfig implements RemoteConfigState {
  const factory _RemoteConfig({required NARemoteConfig naRemoteConfig}) =
      _$_RemoteConfig;

  NARemoteConfig get naRemoteConfig;
  @JsonKey(ignore: true)
  _$RemoteConfigCopyWith<_RemoteConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoteConfigErrorCopyWith<$Res> {
  factory _$RemoteConfigErrorCopyWith(
          _RemoteConfigError value, $Res Function(_RemoteConfigError) then) =
      __$RemoteConfigErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$RemoteConfigErrorCopyWithImpl<$Res>
    extends _$RemoteConfigStateCopyWithImpl<$Res>
    implements _$RemoteConfigErrorCopyWith<$Res> {
  __$RemoteConfigErrorCopyWithImpl(
      _RemoteConfigError _value, $Res Function(_RemoteConfigError) _then)
      : super(_value, (v) => _then(v as _RemoteConfigError));

  @override
  _RemoteConfigError get _value => super._value as _RemoteConfigError;
}

/// @nodoc

class _$_RemoteConfigError implements _RemoteConfigError {
  const _$_RemoteConfigError();

  @override
  String toString() {
    return 'RemoteConfigState.remoteConfigError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RemoteConfigError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NARemoteConfig naRemoteConfig) remoteConfig,
    required TResult Function() remoteConfigError,
  }) {
    return remoteConfigError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NARemoteConfig naRemoteConfig)? remoteConfig,
    TResult Function()? remoteConfigError,
  }) {
    return remoteConfigError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NARemoteConfig naRemoteConfig)? remoteConfig,
    TResult Function()? remoteConfigError,
    required TResult orElse(),
  }) {
    if (remoteConfigError != null) {
      return remoteConfigError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RemoteConfig value) remoteConfig,
    required TResult Function(_RemoteConfigError value) remoteConfigError,
  }) {
    return remoteConfigError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RemoteConfig value)? remoteConfig,
    TResult Function(_RemoteConfigError value)? remoteConfigError,
  }) {
    return remoteConfigError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RemoteConfig value)? remoteConfig,
    TResult Function(_RemoteConfigError value)? remoteConfigError,
    required TResult orElse(),
  }) {
    if (remoteConfigError != null) {
      return remoteConfigError(this);
    }
    return orElse();
  }
}

abstract class _RemoteConfigError implements RemoteConfigState {
  const factory _RemoteConfigError() = _$_RemoteConfigError;
}
