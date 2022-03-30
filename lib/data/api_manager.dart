import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/secure_storage.dart';
import 'package:storage_wrapper/storage_wrapper.dart';
import 'models/na_remote_config/na_remote_config.dart';

class APIManager {
  static final  shared = APIManager();
  static Dio get client => shared._client;
  final _client = Dio();
  final int _defaultTimeout = 10 * 1000;

  configDio() {
    debugPrint("Dio configured☑️");
    _client.options.receiveTimeout = _defaultTimeout;
    _client.interceptors.add(InterceptorsWrapper(
      onRequest: _interceptorOnRequest,
    ));
  }

  late final NARemoteConfig _naRemoteConfig;

  setupWithConfig(NARemoteConfig naRemoteConfig) async {

    _naRemoteConfig = naRemoteConfig;
    String? weatherApiKey = _naRemoteConfig.weatherApiKey;
    String? apiKey = _naRemoteConfig.apiKey;

    if( apiKey != null && weatherApiKey != null) {
      SecureStorage().storeApiKey(apiKey);
      SecureStorage().storeWeatherApiKey(weatherApiKey);
    }
  }

  _interceptorOnRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    Map<String, dynamic> newHeaders = <String, dynamic> {};
    final RequestOptions newOptions;
    newHeaders = {...options.headers};
    newHeaders["content-type"] = Headers.formUrlEncodedContentType;
    debugPrint("Path ${options.path}");
    newOptions = options.copyWith(headers: newHeaders);
    handler.next(newOptions);
  }
}