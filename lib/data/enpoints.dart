class Endpoints {
  static const baseUrl = "https://content.guardianapis.com/";
  static const searchNews = baseUrl + "search";
  static const news = baseUrl + "news";
  static const newsWorldNews = baseUrl + "world";
  static const newsPolitics = baseUrl + "politics";
  static const newsEnvironment = baseUrl + "environment";
  static const newsScience = baseUrl + "science";
  static const newsBusiness = baseUrl + "business";
  static const newsTechnology = baseUrl + "technology";
  static const sport = baseUrl + "sport";
  static const footballSport = baseUrl + "football";
  static const lifeAndStyleSection = baseUrl + "lifeandstyle";
  static const lifeAndStyleFood = baseUrl + "food";
  static const lifeAndStyleFashion = baseUrl + "fashion";
  static const lifeAndStyleFilm = baseUrl + "film";
  static const lifeAndStyleTravel = baseUrl + "travel";
  static const culture = baseUrl + "culture";
  static const cultureBooks = baseUrl + "books";
  static const cultureMusic = baseUrl + "music";
  static const cultureTvAndRadio = baseUrl + "tv-and-radio";
  static const cultureArtAndDesign = baseUrl + "artanddesign";
  static const cultureGames = baseUrl + "games";
  static const cultureStage = baseUrl + "stage";
  static const weatherUrl = "https://api.openweathermap.org/data/2.5/onecall";
  String getIconUrl(String iconCode) {
    return "http://openweathermap.org/img/wn/$iconCode@2x.png";
  }
}