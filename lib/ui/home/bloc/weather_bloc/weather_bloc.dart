import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:newsapp/data/dio_error_handler.dart';
import 'package:newsapp/data/models/weather/weather.dart';
import 'package:newsapp/data/secure_storage.dart';
import 'package:newsapp/data/services/weather_service/weather_service.dart';

part 'weather_bloc.freezed.dart';
part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent,WeatherState> {
  WeatherBloc() : super(const WeatherState.initialState()) {
    on<WeatherEvent> ((event, emit) async {
      await event.when(
          appStarted: () async {
            emit(const WeatherState.loading());
            try {
                List<WeatherItem> forecastingList = await WeatherService().getWeather();
                emit(WeatherState.weatherLoaded(forecastingList: forecastingList));
            }
            on DioError catch (error) {
              emit(WeatherState.weatherError(weatherError: APIErrorHandler.fromDioError(error).message));
            }
          }
      );
    });
  }
}