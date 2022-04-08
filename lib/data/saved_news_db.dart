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
      return news.reversed.toList();
    }
    return news;
  }

  Future<void> saveNews(NewsItem news) async {
    await _savedNewsBox.add(news);
  }

  Future<void> removeSavedNews(NewsItem news) async {
    for(int currentKey in _savedNewsBox.keys) {
      NewsItem savedNews = await _savedNewsBox.get(currentKey);
      if(savedNews == news) {
          await _savedNewsBox.delete(currentKey);
      }
    }
  }

  bool isClickedNewsSaved(NewsItem news) {
    if(_savedNewsBox.isNotEmpty) {
      for(NewsItem savedNews in _savedNewsBox.values) {
        if(savedNews == news) {
          return true;
        }
        return false;
      }
    }
    return false;
  }
}