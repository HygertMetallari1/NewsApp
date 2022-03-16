import 'package:storage_wrapper/storage_wrapper.dart';


const apiStoreKey = "apiKey";

void storeApiKey (String apiKey) async {
  await StorageWrapper.secure().write(key: apiStoreKey, value: apiKey);
}

Future<String?> loadApiKey() async {
  String? apiKey = await StorageWrapper.secure().read(key: apiStoreKey);
  return apiKey;
 }