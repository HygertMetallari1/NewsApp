part of 'culture_tab_bloc.dart';
@freezed
class CultureTabState with _$CultureTabState{
  const factory CultureTabState.initial() = _Initial;
  const factory CultureTabState.loadingNews() = _LoadingNews;
  const factory CultureTabState.loadedNews(
      List<NewsItem> news,
      bool isTheEndOfList) = _LoadedNews;
  const factory CultureTabState.newsError(String error) = _NewsError;
  const factory CultureTabState.resetList() = _ResetList;
}