
part of 'news_tab_bloc.dart';

@freezed
class NewsTabEvent with _$NewsTabEvent {
  const factory NewsTabEvent.loadNews({
    String? chosenSection,
  }) = _LoadNews;
  const factory NewsTabEvent.loadNextPage() = _LoadNextPage;
}