import 'package:flutter/material.dart';
import 'package:newsapp/data/models/news/news.dart';

mixin HelperMixin<T extends StatefulWidget> on State<T>{


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

  int getSubSectionIndex(int sectionIndex) {
    final fetchedIndex =
    PageStorage.of(context)!.readState(context, identifier: sectionIndex);
    if (fetchedIndex != null) {
      return fetchedIndex as int;
    }
    switch (sectionIndex) {
      case 2: return -1;
      case 3: return -1;
    }
    return 0;
  }

  void saveSubSectionIndex(int subSectionIndex, int sectionIndex) {
    PageStorage.of(context)!
        .writeState(context, subSectionIndex, identifier: sectionIndex);
  }

  Widget buildIndicator(Widget indicator) {
    return Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 5),
        child: indicator
    );
  }
}