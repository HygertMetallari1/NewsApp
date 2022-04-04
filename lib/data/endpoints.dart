class Endpoints {
  static const _baseUrl = "https://content.guardianapis.com/";
  static const searchNews = _baseUrl + "search";
  static const newsWorldNews = _baseUrl + "world";
  static const newsPolitics = _baseUrl + "politics";
  static const newsEnvironment = _baseUrl + "environment";
  static const newsScience = _baseUrl + "science";
  static const newsBusiness = _baseUrl + "business";
  static const newsTechnology = _baseUrl + "technology";
  static const sport = _baseUrl + "sport";
  static const footballSport = _baseUrl + "football";
  static const lifeAndStyleSection = _baseUrl + "lifeandstyle";
  static const lifeAndStyleFood = _baseUrl + "food";
  static const lifeAndStyleFashion = _baseUrl + "fashion";
  static const lifeAndStyleFilm = _baseUrl + "film";
  static const lifeAndStyleTravel = _baseUrl + "travel";
  static const culture = _baseUrl + "culture";
  static const cultureBooks = _baseUrl + "books";
  static const cultureMusic = _baseUrl + "music";
  static const cultureTvAndRadio = _baseUrl + "tv-and-radio";
  static const cultureArtAndDesign = _baseUrl + "artanddesign";
  static const cultureGames = _baseUrl + "games";
  static const cultureStage = _baseUrl + "stage";
  static const weatherUrl = "https://api.openweathermap.org/data/2.5/onecall";
  String getIconUrl(String iconCode) {
    return "http://openweathermap.org/img/wn/$iconCode@2x.png";
  }
}
