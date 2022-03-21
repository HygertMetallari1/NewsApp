
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/api_manager.dart';
import 'package:newsapp/data/enpoints.dart';
import 'package:newsapp/data/models/weather/weather.dart';
import 'package:geolocator/geolocator.dart';
import 'package:newsapp/data/secure_storage.dart';

class WeatherService {

  Future<List<WeatherItem>> getWeather() async {
    List<WeatherItem> listForecasting = [];
    Map<String, dynamic> json = <String, dynamic> {};
    final response = await APIManager.client.get(
      Endpoints.weatherUrl,
      queryParameters: await _queryParams()
    );

    for (int i = 0; i < 5; i++) {
      var index = response.data["daily"][i];
      json = {
        "day": index["dt"],
        "maxTemp": index["temp"]["max"],
        "minTemp": index["temp"]["min"],
        "icon": index["weather"][0]["icon"]
      };
      listForecasting.add(WeatherItem.fromJson(json));
    }

    return listForecasting;
  }

  Future<Map<String, dynamic>> _queryParams() async {

    Map<String, dynamic> parameters = <String, dynamic> {};
    String? weatherApiKey = await SecureStorage().loadWeatherApiKey();
    Set<double> location = await getLocation();
    double latitude =  location.first;
    double longitude = location.last;

    if(weatherApiKey != null) {
      parameters = <String, dynamic> {
        "lat": latitude,
        "lon": longitude,
        "exclude": "minutely,hourly,alerts",
        "appid": weatherApiKey,
        "units": "metric"
      };
    }

    return parameters;
  }

}