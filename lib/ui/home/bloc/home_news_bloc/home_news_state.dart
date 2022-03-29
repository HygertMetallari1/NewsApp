part of 'home_news_bloc.dart';

@freezed
class HomeNewsState with _$HomeNewsState {
  const factory HomeNewsState.initial() = _Initial;
  const factory HomeNewsState.loadingNews() = _LoadingNews;
  const factory HomeNewsState.loadedNews(List<NewsItem> news) = _LoadedNews;
  const factory HomeNewsState.newsError(String error) = _NewsError;
  const factory HomeNewsState.resetList() = _ResetList;
}