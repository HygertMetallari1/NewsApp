import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'na_remote_config.freezed.dart';

@freezed
class NARemoteConfig with _$NARemoteConfig {
  factory NARemoteConfig({String? apiKey}) = _NaRemoteConfig;

  static NARemoteConfig fromRemoteConfig(FirebaseRemoteConfig remoteConfig) {
    final apiKey = remoteConfig.getString("apiKey");
    final naRC = NARemoteConfig(apiKey: apiKey);

    return naRC;
  }
}