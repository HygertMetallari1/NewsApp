class Endpoints {
  static const _baseUrl = "https://content.guardianapis.com/";
  static const searchNews = _baseUrl + "search";
  static const Map<String, String> sectionEndpoints = <String, String>{
    "world": _baseUrl + "world",
    "politics": _baseUrl + "politics",
    "environment": _baseUrl + "environment",
    "science": _baseUrl + "science",
    "business": _baseUrl + "business",
    "technology": _baseUrl + "technology",
    "sport": _baseUrl + "sport",
    "football": _baseUrl + "football",
    "lifeandstyle": _baseUrl + "lifeandstyle",
    "food" : _baseUrl + "food",
    "fashion" : _baseUrl + "fashion",
    "film" : _baseUrl + "film",
    "travel" : _baseUrl + "travel",
    "culture" : _baseUrl + "culture",
    "books" : _baseUrl + "books",
    "music" : _baseUrl + "music",
    "tv-and-radio":_baseUrl + "tv-and-radio",
    "games" :_baseUrl + "games",
    "stage" : _baseUrl + "stage"
  };
  static const weatherUrl = "https://api.openweathermap.org/data/2.5/onecall";
  String getIconUrl(String iconCode) {
    return "http://openweathermap.org/img/wn/$iconCode@2x.png";
  }
}
