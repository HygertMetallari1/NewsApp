part of 'sport_tab_bloc.dart';
@freezed
class SportTabState with _$SportTabState{
  const factory SportTabState.initial() = _Initial;
  const factory SportTabState.loadingNews() = _LoadingNews;
  const factory SportTabState.loadedNews(
      List<NewsItem> news,
      bool isTheEndOfList) = _LoadedNews;
  const factory SportTabState.newsError(String error) = _NewsError;
  const factory SportTabState.resetList() = _ResetList;
}