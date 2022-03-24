import 'package:flutter/material.dart';
import 'package:storage_wrapper/storage_wrapper.dart';
import 'package:newsapp/app/utils.dart';

class SecureStorage {
  SecureStorage._();
  static final _singleton = SecureStorage._();
  factory SecureStorage() {
    return _singleton;
  }

  static final Map<String, String> _secureStorageKeys = <String, String>{
    "weatherApiStoreKey": "weatherApiKey",
    "apiStoreKey": "apiKey",
    "locationPermissionKey": "locationPermissionState",
  };

  void storeWeatherApiKey(String weatherApiKey) async{
    await StorageWrapper
        .secure()
        .write(key: _secureStorageKeys["weatherApiStoreKey"]!, value: weatherApiKey);
  }

  Future<String?> loadWeatherApiKey() async{
    debugPrint("Weather store key ${_secureStorageKeys["weatherApiStoreKey"]}");
    String? weatherApiKey = await StorageWrapper
        .secure()
        .read(key: _secureStorageKeys["weatherApiStoreKey"]!);
    return weatherApiKey;
  }

  void storeApiKey (String apiKey) async {
    await StorageWrapper
        .secure()
        .write(key: _secureStorageKeys["apiStoreKey"]!, value: apiKey);
  }

  Future<String?> loadApiKey() async {
    String? apiKey = await StorageWrapper
        .secure()
        .read(key: _secureStorageKeys["apiStoreKey"]!);
    return apiKey;
  }

  void storeLocationPermissionState(bool permission)  async{
    await StorageWrapper
        .secure()
        .write(key: _secureStorageKeys["locationPermissionKey"]!, value: permission.toString());
  }

  Future<bool> loadLocationPermissionState() async {
    String? state = await StorageWrapper
        .secure()
        .read(key: _secureStorageKeys["locationPermissionKey"]!);
    bool convertedState = true;
    if(state != null) {
      convertedState = state.toBool();
    }
    return convertedState;
  }
}