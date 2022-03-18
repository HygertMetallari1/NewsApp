
import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class WeatherItem with _$WeatherItem {
  factory WeatherItem({
    required int day,
    required double maxTemp,
    required double minTemp,
    required String icon
  }) = _WeatherItem;
  factory WeatherItem.fromJson(Map<String, dynamic> json) => _$WeatherItemFromJson(json);
}