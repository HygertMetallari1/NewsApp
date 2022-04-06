
part of 'sport_tab_bloc.dart';

@freezed
class SportTabEvent with _$SportTabEvent {
  const factory SportTabEvent.loadNews() = _LoadNews;
  const factory SportTabEvent.loadNextPage() = _LoadNextPage;
}