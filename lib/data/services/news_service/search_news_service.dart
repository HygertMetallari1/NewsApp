import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/api_manager.dart';
import 'package:newsapp/data/endpoints.dart';
import 'package:newsapp/data/models/news/news.dart';

class SearchNewsService {
  static const  String _showFields = "headline,trailText,body,thumbnail,byline,liveBloggingNow=false";
  final Map<String, String> _queryParams = <String, String> {
    "show-fields":_showFields,
    "show-blocks":"body"
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

  Future<Map<String, String>> _queryParameters(
      String? queryTerm,
      String? orderBy,
      String? fromDate,
      String? toDate,
      int? currentPage,) async {

    if(queryTerm != null) {
      _queryParams.addAll({"q": queryTerm});
    }
    if (orderBy != null) {
      _queryParams.addAll({"order-by": orderBy.toLowerCase()});
    }
    if(fromDate != null) {
      _queryParams.addAll({"from-date": fromDate});
    }
    if (toDate != null) {
      _queryParams.addAll({"to-date": toDate});
    }
    if (currentPage != null) {
      _queryParams.addAll({"page": currentPage.toString()});
    }
    return _queryParams;
  }
  
}