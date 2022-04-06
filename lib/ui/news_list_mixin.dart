import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/data/models/news/news.dart';

mixin NewsListMixin<T extends StatefulWidget> on State<T>{


  List<NewsItem> getStoredNewsList() {
    final fetchedNews =
    PageStorage.of(context)!.readState(context, identifier: widget.key);
    if (fetchedNews != null) {
      return fetchedNews as List<NewsItem>;
    }
    return [];
  }

  void saveToPageStorage(List<NewsItem> newNewsState) {
    PageStorage.of(context)!
        .writeState(context, newNewsState, identifier: widget.key);
  }

}