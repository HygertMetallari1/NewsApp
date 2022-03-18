// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherItem _$$_WeatherItemFromJson(Map<String, dynamic> json) =>
    _$_WeatherItem(
      day: json['day'] as int,
      maxTemp: (json['maxTemp'] as num).toDouble(),
      minTemp: (json['minTemp'] as num).toDouble(),
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$_WeatherItemToJson(_$_WeatherItem instance) =>
    <String, dynamic>{
      'day': instance.day,
      'maxTemp': instance.maxTemp,
      'minTemp': instance.minTemp,
      'icon': instance.icon,
    };
