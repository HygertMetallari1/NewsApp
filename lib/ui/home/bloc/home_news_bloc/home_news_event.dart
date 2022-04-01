part of 'home_news_bloc.dart';

@freezed
class HomeNewsEvent with _$HomeNewsEvent {
  const factory  HomeNewsEvent.unfilteredNews() = _UnfilteredNews;
  const factory HomeNewsEvent.searchNews({
    required String? queryField
  }) = _SearchNews;
  const factory HomeNewsEvent.orderBy({
    required String? orderBy
  }) = _OrderBy;
  const factory HomeNewsEvent.selectDate({
    required String? fromDate,
    required String? toDate,
  }) = _SelectDate;
  const factory HomeNewsEvent.loadNextPage() = _LoadNextPage;
}