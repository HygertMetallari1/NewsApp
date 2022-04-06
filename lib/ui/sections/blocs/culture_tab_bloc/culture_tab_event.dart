part of 'culture_tab_bloc.dart';

@freezed
class CultureTabEvent with _$CultureTabEvent {
  const factory CultureTabEvent.loadNews({
    String? chosenSection,
  }) = _LoadNews;
  const factory CultureTabEvent.loadNextPage() = _LoadNextPage;
}