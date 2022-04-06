part of 'lifestyle_tab_bloc.dart';
@freezed
class LifestyleTabState with _$LifestyleTabState{
  const factory LifestyleTabState.initial() = _Initial;
  const factory LifestyleTabState.loadingNews() = _LoadingNews;
  const factory LifestyleTabState.loadedNews(
      List<NewsItem> news,
      {bool? isTheEndOfList}) = _LoadedNews;
  const factory LifestyleTabState.newsError(String error) = _NewsError;
  const factory LifestyleTabState.resetList() = _ResetList;
}