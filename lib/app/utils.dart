import 'package:flutter/material.dart';
import 'dart:core';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:newsapp/data/models/news/news.dart';
import 'package:newsapp/data/secure_storage.dart';

String convertCurrentTime() {
  String convTime = DateFormat("EEEE, MMMM d").format(DateTime.now());
  return convTime;
}

String convertQueryTime(DateTime date) {
  String convQueryTime = DateFormat("yyyy-MM-dd").format(date);
  return convQueryTime;
}

String convertWeatherTimestamp (int timestamp) {
  DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  String converted =  DateFormat("EEE").format(date);
  return converted.toUpperCase();
}

String convertMaxTemp(double maxTemp) {
  String convMaxTemp = maxTemp.toInt().toString()+"°C";
  return convMaxTemp;
}

String convertTemperatures(double maxTemp, double minTemp) {
  String convMaxTemp = maxTemp.toInt().toString()+"°";
  String convMinTemp =  minTemp.toInt().toString()+"°";;
  String temperatures = convMaxTemp + " " + convMinTemp;
  return temperatures;
}

Future<Set<double>> getLocation() async {
  //If the device doesn't have a last location or current location
  // the function will return Silicon Valley.CA.USA location
  Set<double> location = <double>{
    37.38,
    -122.05
  };
  late Position position;
  bool locationService = await _isPermitted;
  if(locationService) {
    position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    location.clear();
    location.addAll({position.latitude, position.longitude});
  }
  return location;
}

Future<bool> get _isPermitted async {
  bool permissionState = await SecureStorage().loadLocationPermissionState();
  bool enableState = await Geolocator.isLocationServiceEnabled();
  bool state = true;
  if(enableState == true) {
    state = permissionState;
  } else {
    state = false;
  }
  return state;
}

Future<bool> checkLocationServices() async {
  LocationPermission permission;
  permission = await Geolocator.requestPermission();
  switch(permission) {
    case LocationPermission.denied:
        SecureStorage().storeLocationPermissionState(false);
      break;
    case LocationPermission.deniedForever:
      SecureStorage().storeLocationPermissionState(false);
      break;
    case LocationPermission.whileInUse:
      SecureStorage().storeLocationPermissionState(true);
      break;
    case LocationPermission.always:
      SecureStorage().storeLocationPermissionState(true);
      break;
    case LocationPermission.unableToDetermine:
      SecureStorage().storeLocationPermissionState(false);
      break;
  }
  return true;
}

List<NewsItem> convertedNewsList (dynamic responseData) {
  List<NewsItem> newsList = [];
  final results = responseData["response"]["results"];
  for(int i = 0; i < 10; i++) {
    Map<String, dynamic> json = {
      "headline" : results[i]["fields"]["headline"],
      "trailText": results[i]["fields"]["trailText"],
      "publishDate": results[i]["webPublicationDate"],
      "author": results[i]["fields"]["byline"],
      "content": results[i]["fields"]["body"].toString().stripHTML(),
      "thumbnail": results[i]["fields"]["thumbnail"]
    };
    newsList.add(NewsItem.fromJson(json));
  }
  return newsList;
}

extension StringExtension on String {
  bool toBool() {
    bool value = true;
    if(this == "true") {
      value = true;
    }
    if(this == "false") {
      value = false;
    }
    return value;
  }

  String stripHTML() {
    return replaceAll(RegExp(r'<[^>]*>|&[^;]+;'),'');
  }
}