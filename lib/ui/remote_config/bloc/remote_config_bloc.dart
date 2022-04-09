import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:newsapp/data/models/na_remote_config/na_remote_config.dart';


part 'remote_config_bloc.freezed.dart';
part 'remote_config_event.dart';
part 'remote_config_state.dart';

class RemoteConfigBloc extends Bloc<RemoteConfigEvent, RemoteConfigState> {
  RemoteConfigBloc() : super(const RemoteConfigState.initial()){
    on<RemoteConfigEvent> ((event, emit) async {
     await event.when(
          getValues: () async {
            try {
              final firebaseRemoteConfig = await _setupRemoteConfig();
              final naRemoteConfig = NARemoteConfig.fromRemoteConfig(firebaseRemoteConfig);
              emit(RemoteConfigState.remoteConfig(naRemoteConfig: naRemoteConfig));
            } catch (error) {
              emit(const RemoteConfigState.remoteConfigError());
            }
          }
      );
    });
  }

  Future<FirebaseRemoteConfig> _setupRemoteConfig() async {
    await Firebase.initializeApp();
    FirebaseRemoteConfig firebaseRemoteConfig = FirebaseRemoteConfig.instance;
    await firebaseRemoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: const Duration(minutes: 30),
      ),
    );
    await firebaseRemoteConfig.fetchAndActivate();
    return firebaseRemoteConfig;
  }

  Future<NARemoteConfig> waitForRemoteConfig() async {
    NARemoteConfig? _remoteConfig;
    await stream.firstWhere((element) {
      element.whenOrNull(
        remoteConfig: (remoteConfig) {
          _remoteConfig = remoteConfig;
        },
      );
      return _remoteConfig != null;
    });
    return _remoteConfig!;
  }
}