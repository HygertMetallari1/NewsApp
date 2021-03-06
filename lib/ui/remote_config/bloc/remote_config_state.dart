part of 'remote_config_bloc.dart';

@freezed
class RemoteConfigState with _$RemoteConfigState {
  const factory RemoteConfigState.initial() = _Initial;
  const factory RemoteConfigState.remoteConfig({
    required NARemoteConfig naRemoteConfig
  }) = _RemoteConfig;
  const factory RemoteConfigState.remoteConfigError() = _RemoteConfigError;
}
