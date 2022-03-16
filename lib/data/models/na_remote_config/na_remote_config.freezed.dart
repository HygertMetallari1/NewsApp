// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'na_remote_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NARemoteConfigTearOff {
  const _$NARemoteConfigTearOff();

  _NaRemoteConfig call({String? apiKey}) {
    return _NaRemoteConfig(
      apiKey: apiKey,
    );
  }
}

/// @nodoc
const $NARemoteConfig = _$NARemoteConfigTearOff();

/// @nodoc
mixin _$NARemoteConfig {
  String? get apiKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NARemoteConfigCopyWith<NARemoteConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NARemoteConfigCopyWith<$Res> {
  factory $NARemoteConfigCopyWith(
          NARemoteConfig value, $Res Function(NARemoteConfig) then) =
      _$NARemoteConfigCopyWithImpl<$Res>;
  $Res call({String? apiKey});
}

/// @nodoc
class _$NARemoteConfigCopyWithImpl<$Res>
    implements $NARemoteConfigCopyWith<$Res> {
  _$NARemoteConfigCopyWithImpl(this._value, this._then);

  final NARemoteConfig _value;
  // ignore: unused_field
  final $Res Function(NARemoteConfig) _then;

  @override
  $Res call({
    Object? apiKey = freezed,
  }) {
    return _then(_value.copyWith(
      apiKey: apiKey == freezed
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NaRemoteConfigCopyWith<$Res>
    implements $NARemoteConfigCopyWith<$Res> {
  factory _$NaRemoteConfigCopyWith(
          _NaRemoteConfig value, $Res Function(_NaRemoteConfig) then) =
      __$NaRemoteConfigCopyWithImpl<$Res>;
  @override
  $Res call({String? apiKey});
}

/// @nodoc
class __$NaRemoteConfigCopyWithImpl<$Res>
    extends _$NARemoteConfigCopyWithImpl<$Res>
    implements _$NaRemoteConfigCopyWith<$Res> {
  __$NaRemoteConfigCopyWithImpl(
      _NaRemoteConfig _value, $Res Function(_NaRemoteConfig) _then)
      : super(_value, (v) => _then(v as _NaRemoteConfig));

  @override
  _NaRemoteConfig get _value => super._value as _NaRemoteConfig;

  @override
  $Res call({
    Object? apiKey = freezed,
  }) {
    return _then(_NaRemoteConfig(
      apiKey: apiKey == freezed
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NaRemoteConfig implements _NaRemoteConfig {
  _$_NaRemoteConfig({this.apiKey});

  @override
  final String? apiKey;

  @override
  String toString() {
    return 'NARemoteConfig(apiKey: $apiKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NaRemoteConfig &&
            const DeepCollectionEquality().equals(other.apiKey, apiKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(apiKey));

  @JsonKey(ignore: true)
  @override
  _$NaRemoteConfigCopyWith<_NaRemoteConfig> get copyWith =>
      __$NaRemoteConfigCopyWithImpl<_NaRemoteConfig>(this, _$identity);
}

abstract class _NaRemoteConfig implements NARemoteConfig {
  factory _NaRemoteConfig({String? apiKey}) = _$_NaRemoteConfig;

  @override
  String? get apiKey;
  @override
  @JsonKey(ignore: true)
  _$NaRemoteConfigCopyWith<_NaRemoteConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
