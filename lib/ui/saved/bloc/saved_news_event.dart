part of 'saved_news_bloc.dart';

@freezed
class SavedNewsEvent with _$SavedNewsEvent {
  const factory SavedNewsEvent.loadSavedNews() = _LoadSavedNews;
  const factory SavedNewsEvent.saveNews({required NewsItem news}) = _SaveNews;
  const factory SavedNewsEvent.removeNews({required NewsItem news}) = _RemoveNews;
}