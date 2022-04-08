part of 'saved_news_bloc.dart';

@freezed
class SavedNewsState with _$SavedNewsState {
  const factory SavedNewsState.initial() = _Initial;
  const factory SavedNewsState.loadingSavedNews() = _LoadingSavedNews;
  const factory SavedNewsState.loadedSavedNews(List<NewsItem> savedNews) = _LoadedSavedNews;
  const factory SavedNewsState.savedNewsError(String error) = _SavedNewsError;
}