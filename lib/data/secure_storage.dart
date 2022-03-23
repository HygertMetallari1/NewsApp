import 'package:flutter/material.dart';
import 'package:storage_wrapper/storage_wrapper.dart';
import 'package:newsapp/app/utils.dart';

class SecureStorage {
  SecureStorage._();
  static final _singleton = SecureStorage._();
  factory SecureStorage() {
    return _singleton;
  }

  static final Map<String, String> secureStorageKeys = <String, String>{
    "weatherApiStoreKey": "weatherApiKey",
    "apiStoreKey": "apiKey",
    "locationPermissionKey": "locationPermissionState"
  };

  void storeWeatherApiKey(String weatherApiKey) async{
    await StorageWrapper
        .secure()
        .write(key: secureStorageKeys["weatherApiStoreKey"]!, value: weatherApiKey);
  }

  Future<String?> loadWeatherApiKey() async{
    debugPrint("Weather store key ${secureStorageKeys["weatherApiStoreKey"]}");
    String? weatherApiKey = await StorageWrapper
        .secure()
        .read(key: secureStorageKeys["weatherApiStoreKey"]!);
    return weatherApiKey;
  }

  void storeApiKey (String apiKey) async {
    await StorageWrapper
        .secure()
        .write(key: secureStorageKeys["apiStoreKey"]!, value: apiKey);
  }

  Future<String?> loadApiKey() async {
    String? apiKey = await StorageWrapper
        .secure()
        .read(key: secureStorageKeys["apiStoreKey"]!);
    return apiKey;
  }

  void storeLocationPermissionState(bool permission)  async{
    await StorageWrapper
        .secure()
        .write(key: secureStorageKeys["locationPermissionKey"]!, value: permission.toString());
  }

  Future<bool> loadLocationPermissionState() async {
    String? state = await StorageWrapper
        .secure()
        .read(key: secureStorageKeys["locationPermissionKey"]!);
    bool convertedState = true;
    if(state != null) {
      convertedState = state.toBool();
    }
    return convertedState;
  }
}