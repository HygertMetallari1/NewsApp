class Endpoints {
  static const baseUrl = "https://newsapi.org/v2/";
  static const searchNews = baseUrl + "everything";
  static const topHeadlines = baseUrl + "top-headlines";
  static const weatherUrl = "https://api.openweathermap.org/data/2.5/onecall";
  String getIconUrl(String iconCode) {
    return "http://openweathermap.org/img/wn/$iconCode@2x.png";
  }
}