import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/api_manager.dart';
import 'package:newsapp/data/endpoints.dart';
import 'package:newsapp/data/models/news/news.dart';

class NewsService {
  static const  String _showFields = "headline,trailText,body,thumbnail,byline,liveBloggingNow=false";
  static const String _showBlocks = "body";
  String sectionEndpoint = "";

  final Map<String, String> _queryParamsHomeNews = <String, String> {
    "show-fields":_showFields,
    "show-blocks": _showBlocks
  };

  final Map<String, String> _queryParamsNewsSection = <String, String> {
    "show-fields":_showFields,
    "show-blocks": _showBlocks
  };

  Future<List<NewsItem>> getNews({String? queryTerm, String? orderBy, String? fromDate, String? toDate, int? currentPage,}) async {
        final response = await APIManager.client.get(
        Endpoints.searchNews+"?"+Uri(queryParameters: await _queryParameters(
             queryTerm,
             orderBy,
             fromDate,
             toDate,
             currentPage)
         ).query,
      );
    return  convertedNewsList(response.data);
  }

  Future<List<NewsItem>> getNewsSection(int currentPage, String chosenSection) async {
    _queryParamsNewsSection.addAll({"page": currentPage.toString()});
    final response = await APIManager.client.get(
        _getEndpoint(chosenSection)+"?"+Uri(queryParameters: _queryParamsNewsSection).query
    );
    return convertedNewsList(response.data);
  }

  String _getEndpoint(String chosenSection) {
    String endpoint = "";
    Endpoints.sectionEndpoints.forEach((key, value) {
      if(key == chosenSection) {
        endpoint = value;
      }
    });
    return endpoint;
  }

  Future<Map<String, String>> _queryParameters(
      String? queryTerm,
      String? orderBy,
      String? fromDate,
      String? toDate,
      int? currentPage,) async {

    if(queryTerm != null) {
      _queryParamsHomeNews.addAll({"q": queryTerm});
    }
    if (orderBy != null) {
      _queryParamsHomeNews.addAll({"order-by": orderBy.toLowerCase()});
    }
    if(fromDate != null) {
      _queryParamsHomeNews.addAll({"from-date": fromDate});
    }
    if (toDate != null) {
      _queryParamsHomeNews.addAll({"to-date": toDate});
    }
    if (currentPage != null) {
      _queryParamsHomeNews.addAll({"page": currentPage.toString()});
    }
    return _queryParamsHomeNews;
  }
  
}