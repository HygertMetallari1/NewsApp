part of 'lifestyle_tab_bloc.dart';

@freezed
class LifestyleTabEvent with _$LifestyleTabEvent {
  const factory LifestyleTabEvent.loadNews({
    String? chosenSection,
  }) = _LoadNews;
  const factory LifestyleTabEvent.loadNextPage() = _LoadNextPage;
}