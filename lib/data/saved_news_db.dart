import 'package:flutter/material.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/models/news/news.dart';
import 'package:hive/hive.dart';

class SavedNews {
  static final Box _savedNewsBox = Hive.box<NewsItem>(savedNewsBoxName);

  List<NewsItem> getSavedNews() {
    List<NewsItem> news = [];
    if(_savedNewsBox.isNotEmpty) {
      news.addAll(_savedNewsBox.values.toList().cast<NewsItem>());
      return news;
    }
    return news;
  }

  void saveNews(NewsItem news) {
    _savedNewsBox.add(news);
  }

  void removeSavedNews(NewsItem news) {
    for(int currentKey in _savedNewsBox.keys) {
      NewsItem savedNews =  _savedNewsBox.get(currentKey);
      if(savedNews == news) {
        _savedNewsBox.delete(currentKey);
      }
    }
  }

  bool isClickedNewsSaved(NewsItem news) {
    if(_savedNewsBox.isNotEmpty) {
      for(var savedNews in _savedNewsBox.values) {
        if(savedNews == news) {
          return true;
        }
      }
    }
    return false;
  }
}