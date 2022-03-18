// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherItem _$WeatherItemFromJson(Map<String, dynamic> json) {
  return _WeatherItem.fromJson(json);
}

/// @nodoc
class _$WeatherItemTearOff {
  const _$WeatherItemTearOff();

  _WeatherItem call(
      {required int day,
      required double maxTemp,
      required double minTemp,
      required String icon}) {
    return _WeatherItem(
      day: day,
      maxTemp: maxTemp,
      minTemp: minTemp,
      icon: icon,
    );
  }

  WeatherItem fromJson(Map<String, Object?> json) {
    return WeatherItem.fromJson(json);
  }
}

/// @nodoc
const $WeatherItem = _$WeatherItemTearOff();

/// @nodoc
mixin _$WeatherItem {
  int get day => throw _privateConstructorUsedError;
  double get maxTemp => throw _privateConstructorUsedError;
  double get minTemp => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherItemCopyWith<WeatherItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherItemCopyWith<$Res> {
  factory $WeatherItemCopyWith(
          WeatherItem value, $Res Function(WeatherItem) then) =
      _$WeatherItemCopyWithImpl<$Res>;
  $Res call({int day, double maxTemp, double minTemp, String icon});
}

/// @nodoc
class _$WeatherItemCopyWithImpl<$Res> implements $WeatherItemCopyWith<$Res> {
  _$WeatherItemCopyWithImpl(this._value, this._then);

  final WeatherItem _value;
  // ignore: unused_field
  final $Res Function(WeatherItem) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? maxTemp = freezed,
    Object? minTemp = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      maxTemp: maxTemp == freezed
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double,
      minTemp: minTemp == freezed
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as double,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WeatherItemCopyWith<$Res>
    implements $WeatherItemCopyWith<$Res> {
  factory _$WeatherItemCopyWith(
          _WeatherItem value, $Res Function(_WeatherItem) then) =
      __$WeatherItemCopyWithImpl<$Res>;
  @override
  $Res call({int day, double maxTemp, double minTemp, String icon});
}

/// @nodoc
class __$WeatherItemCopyWithImpl<$Res> extends _$WeatherItemCopyWithImpl<$Res>
    implements _$WeatherItemCopyWith<$Res> {
  __$WeatherItemCopyWithImpl(
      _WeatherItem _value, $Res Function(_WeatherItem) _then)
      : super(_value, (v) => _then(v as _WeatherItem));

  @override
  _WeatherItem get _value => super._value as _WeatherItem;

  @override
  $Res call({
    Object? day = freezed,
    Object? maxTemp = freezed,
    Object? minTemp = freezed,
    Object? icon = freezed,
  }) {
    return _then(_WeatherItem(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      maxTemp: maxTemp == freezed
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double,
      minTemp: minTemp == freezed
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as double,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherItem implements _WeatherItem {
  _$_WeatherItem(
      {required this.day,
      required this.maxTemp,
      required this.minTemp,
      required this.icon});

  factory _$_WeatherItem.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherItemFromJson(json);

  @override
  final int day;
  @override
  final double maxTemp;
  @override
  final double minTemp;
  @override
  final String icon;

  @override
  String toString() {
    return 'WeatherItem(day: $day, maxTemp: $maxTemp, minTemp: $minTemp, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherItem &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.maxTemp, maxTemp) &&
            const DeepCollectionEquality().equals(other.minTemp, minTemp) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(maxTemp),
      const DeepCollectionEquality().hash(minTemp),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$WeatherItemCopyWith<_WeatherItem> get copyWith =>
      __$WeatherItemCopyWithImpl<_WeatherItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherItemToJson(this);
  }
}

abstract class _WeatherItem implements WeatherItem {
  factory _WeatherItem(
      {required int day,
      required double maxTemp,
      required double minTemp,
      required String icon}) = _$_WeatherItem;

  factory _WeatherItem.fromJson(Map<String, dynamic> json) =
      _$_WeatherItem.fromJson;

  @override
  int get day;
  @override
  double get maxTemp;
  @override
  double get minTemp;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$WeatherItemCopyWith<_WeatherItem> get copyWith =>
      throw _privateConstructorUsedError;
}
