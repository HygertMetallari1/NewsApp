import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/app/utils.dart';
import 'models/na_remote_config/na_remote_config.dart';

class APIManager {
  static final  shared = APIManager();
  static Dio get client => shared._client;
  final _client = Dio();
  final int _defaultTimeout = 10 * 1000;

  configDio() {
    _client.options.receiveTimeout = _defaultTimeout;
    _client.interceptors.add(InterceptorsWrapper(
      onRequest: _interceptorOnRequest,
    ));
  }

  late final NARemoteConfig _naRemoteConfig;
  setupWithConfig(NARemoteConfig naRemoteConfig) async {
    _naRemoteConfig = naRemoteConfig;
    String? apiKey = _naRemoteConfig.apiKey;
    if( apiKey != null) {
      storeApiKey(apiKey);
    }
  }

  _interceptorOnRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    Map<String, dynamic> newHeaders = <String, dynamic> {};
    final RequestOptions newOptions;
    String? apiKey = await loadApiKey();
    if(apiKey != null) {
      newHeaders = {...options.headers};
      newHeaders['Authorization'] = 'Bearer' + apiKey;
      newHeaders["content-type"] = Headers.formUrlEncodedContentType;
      newOptions = options.copyWith(headers: newHeaders);
      handler.next(newOptions);
    }
  }
}