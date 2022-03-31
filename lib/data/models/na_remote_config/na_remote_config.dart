import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'na_remote_config.freezed.dart';

@freezed
class NARemoteConfig with _$NARemoteConfig {
  factory NARemoteConfig({String? weatherApiKey, String? apiKey}) = _NaRemoteConfig;

  static NARemoteConfig fromRemoteConfig(FirebaseRemoteConfig remoteConfig) {
    final weatherApiKey = remoteConfig.getString("weatherApiKey");
    final apiKey = remoteConfig.getString("apiKey");
    final naRCObj = NARemoteConfig(weatherApiKey: weatherApiKey, apiKey: apiKey);
    return naRCObj;
  }
}