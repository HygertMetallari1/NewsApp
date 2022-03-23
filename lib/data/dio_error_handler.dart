import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

class APIError {
  APIError.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectTimeout:
        _message = tr("errors.connection_timeout");
        break;
      case DioErrorType.receiveTimeout:
        _message = tr("errors.receive_timeout");
        break;
      case DioErrorType.response:
        _message =
            _handleLogInError(dioError.response?.statusCode);
        break;
      case DioErrorType.sendTimeout:
        _message = tr("errors.send_timeout");
        break;
      default: _message = tr("errors.unexpected_error");
    }
  }

  String? _message;

  String?  get message => _message;

  String? _handleLogInError(int? statusCode){
    switch(statusCode){
      case 400: return tr("errors.internet_error");
      case 401: return tr("errors.internet_error");
      case 404: return tr("errors.error_404");
      case 500: return tr ("errors.error_500");
      default: return tr("errors.unexpected_error");
    }
  }
}