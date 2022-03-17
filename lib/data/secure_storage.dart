import 'package:storage_wrapper/storage_wrapper.dart';

class SecureStorage {
  SecureStorage._();
  static final _singleton = SecureStorage._();
  factory SecureStorage() {
    return _singleton;
  }

  static final Map<String, String> secureStorageKeys = <String, String>{
    "weatherApiStoreKey": "weatherApiKey",
    "apiStoreKey": "apiKey"
  };

  void storeWeatherApiKey(String weatherApiKey) async{
    await StorageWrapper
        .secure()
        .write(key: secureStorageKeys["weatherApiStoreKey"]!, value: weatherApiKey);
  }

  Future<String?> loadWeatherApiKey() async{
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
}