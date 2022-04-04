import 'package:flutter/material.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/api_manager.dart';
import 'package:newsapp/data/endpoints.dart';
import 'package:newsapp/data/models/news/news.dart';

class NewsSectionsService {
  static const  String _showFields = "headline,trailText,body,thumbnail,byline,liveBloggingNow=false";
  final Map<String, String> _queryParams = <String, String> {
    "show-fields":_showFields,
    "show-blocks":"body"
  };
  
  Future<List<NewsItem>> getNewsSection(int currentPage) async {
    _queryParams.addAll({"page": currentPage.toString()});
    final response = await APIManager.client.get(
      Endpoints.newsScience+"?"+Uri(queryParameters: _queryParams).query
    );
    return convertedNewsList(response.data);
  }
}