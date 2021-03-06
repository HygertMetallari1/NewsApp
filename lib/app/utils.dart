import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'dart:core';
import 'package:geolocator/geolocator.dart';
import 'package:hive/hive.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/data/models/news/news.dart';
import 'package:newsapp/data/secure_storage.dart';
import 'package:path_provider/path_provider.dart';

const String savedNewsBoxName = "saved_news";

initHive() async {
  _initHive() async {
    Directory appDocumentDirectory = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDirectory.path);
    Hive.registerAdapter(NewsItemAdapter());
    await Hive.openBox<NewsItem>(savedNewsBoxName);
  }

  try {
    await _initHive();
  } catch (e) {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    documentsDirectory.delete(recursive: true);
    await _initHive();
  }
}

String convertMaxTemp(double maxTemp) {
  String convMaxTemp = maxTemp.toInt().toString()+"°C";
  return convMaxTemp;
}

bool isDarkMode(BuildContext context) {
  var brightness = MediaQuery.of(context).platformBrightness;
  bool isDarkMode = brightness == Brightness.dark;
  return isDarkMode;
}


Widget progressIndicator({double? width}) {
  return CircularProgressIndicator(
    color: NAColors.blue,
    strokeWidth: width ?? 4.0,
  );
}

Future<Set<double>> getLocation() async {
  //If the device doesn't have a last location or current location
  // the function will return Silicon Valley.CA.USA location
  Set<double> location = <double>{
    37.38,
    -122.05
  };
  late Position position;
  bool locationService = await isPermitted;
  if(locationService) {
    position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    location.clear();
    location.addAll({position.latitude, position.longitude});
  }
  return location;
}

Future<bool> get isPermitted async {
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

bool areTheSame(List<NewsItem> storedList, List<NewsItem> blocList) { // compare to not store the same news at the pages store
  int storedListLength = storedList.length;
  if(listEquals(storedList, blocList) == false) {
    if(storedList.length > 10) {
      if(listEquals(storedList.sublist(storedListLength - 10, storedListLength), blocList) == false) {
        return false;
      }
    } else {
      return false;
    }
  }
  return true;
}

List<NewsItem> convertedNewsList (dynamic responseData) {
  List<NewsItem> newsList = [];
  final results = responseData["response"]["results"] as List;
  String content = "";
  if(results.isNotEmpty) {
    for(int i = 0; i < results.length ; i++) {
      if(results[i]["blocks"]["totalBodyBlocks"] != 0) {
        content = results[i]["blocks"]["body"][0]["bodyTextSummary"].toString();
      }
      Map<String, dynamic> json = {
        "headline" : results[i]["fields"]["headline"] ,
        "trailText": _stripHtml(results[i]["fields"]["trailText"]),
        "publishDate": convertPublishDate(results[i]["webPublicationDate"].toString()),
        "author": results[i]["fields"]["byline"],
        "content": content,
        "thumbnail": results[i]["fields"]["thumbnail"]
      };
      if(i == 0) {
        json.addAll({"pages": responseData["response"]["pages"]});
      }
      newsList.add(NewsItem.fromJson(json));
    }
  }
  return newsList;
}

String _stripHtml(String text) {
  RegExp exp = RegExp(
      r"<[^>]*>",
      multiLine: true,
      caseSensitive: true
  );
  String convText = text.replaceAll(exp, "");
  return convText;
}

String convertPublishDate(String date) {
  String now = DateTime.now().toString();
  if(date.substring(8, 10) == now.substring(8, 10)){
    return date.substring(11, 16);
  }
  return date.substring(0,10);
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
}