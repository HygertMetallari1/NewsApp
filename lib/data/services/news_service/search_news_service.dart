import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/api_manager.dart';
import 'package:newsapp/data/enpoints.dart';
import 'package:newsapp/data/models/news/news.dart';

class SearchNewsService {
  static const  String _showFields = "headline,trailText,body,thumbnail,byline,liveBloggingNow=false";
  final Map<String, dynamic> _queryParams = <String, dynamic> {
    "show-fields": _showFields
  };

  Future<List<NewsItem>> getNews({
    String? queryTerm,
    String? orderBy,
    String? fromDate,
    String? toDate,
    int? currentPage,}) async {

    _checkParameters(queryTerm, orderBy, fromDate, toDate, currentPage);

    final response = await APIManager.client.get(
      Endpoints.searchNews,
      queryParameters: _queryParams,
    );
    return  convertedNewsList(response);
  }

  void _checkParameters(
      String? queryTerm,
      String? orderBy,
      String? fromDate,
      String? toDate,
      int? currentPage,) {

    if(queryTerm != null) {
      _queryParams.addAll({"q": queryTerm});
    }
    else if (orderBy != null) {
      _queryParams.addAll({"order-by": orderBy});
    }
    else if(fromDate != null) {
      _queryParams.addAll({"from-date": fromDate});
    }
    else if (toDate != null) {
      _queryParams.addAll({"to-date": toDate});
    }
    else if (currentPage != null) {
      _queryParams.addAll({"currentPage": currentPage});
    }
  }

}