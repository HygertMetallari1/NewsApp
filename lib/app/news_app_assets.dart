import 'package:flutter/material.dart';
import 'package:newsapp/app/theme.dart';

class NewsAppAssets {
  NewsAppAssets._();
  static const Icon home = Icon(Icons.home);
  static const Icon selectedHome = Icon(
    Icons.home,
    size: 26,
  );
  static const Icon headlines = Icon(Icons.language);
  static const Icon selectedHeadlines = Icon(
    Icons.language,
    size: 26,
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
  static const Icon delete = Icon(
    Icons.delete_outline_outlined,
    color: NAColors.black,
    size: 24,
  );
}