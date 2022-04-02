import 'package:flutter/material.dart';
import 'package:newsapp/app/theme.dart';

class NewsAppAssets {
  NewsAppAssets._();
  static const Icon home = Icon(Icons.home);
  static const Icon selectedHome = Icon(
    Icons.home,
    size: 26,
  );

  static Image section = Image.asset(
      "assets/images/sections.png",
      width: 25,
      height: 25,
  );
  static Image selectedSection = Image.asset(
    "assets/images/sections.png",
    width: 26,
    height: 26,
    color: NAColors.blue,
  );

  static const Icon saved = Icon(Icons.bookmark);
  static const Icon selectedSaved = Icon (
    Icons.bookmark,
    size: 26,
  );
  static const Icon search = Icon(
      Icons.search_outlined,
      color: NAColors.black,
      size: 24,
  );

  static const Icon backArrow = Icon(
    Icons.arrow_back_ios,
    color: NAColors.black,
    size: 24,
  );

  static const Icon upArrow = Icon(
    Icons.arrow_upward,
    color: NAColors.white,
    size: 24,
  );
  static Image remove = Image.asset(
    "assets/images/cross.png",
    width: 24,
    height: 24,
    color: NAColors.black,
  );
}