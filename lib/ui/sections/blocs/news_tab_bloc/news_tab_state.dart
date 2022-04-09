part of 'news_tab_bloc.dart';
@freezed
class NewsTabState with _$NewsTabState{
  const factory NewsTabState.initial() = _Initial;
  const factory NewsTabState.loadingNews() = _LoadingNews;
  const factory NewsTabState.loadedNews(
      List<NewsItem> news,
      bool isTheEndOfList) = _LoadedNews;
  const factory NewsTabState.newsError(String error) = _NewsError;
  const factory NewsTabState.resetList() = _ResetList;
}