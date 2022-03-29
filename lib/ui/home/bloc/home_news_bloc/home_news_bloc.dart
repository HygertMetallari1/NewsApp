import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:newsapp/data/dio_error_handler.dart';
import 'package:newsapp/data/models/news/news.dart';
import 'package:newsapp/data/services/news_service/search_news_service.dart';
import 'package:newsapp/ui/home/widgets/filters/filters_data.dart';

part 'home_news_bloc.freezed.dart';
part 'home_news_event.dart';
part 'home_news_state.dart';

class HomeBlocNews extends Bloc<HomeNewsEvent, HomeNewsState>{
  List<NewsItem> _news = [];
  int  _currentPage = 1;

  HomeBlocNews() : super(const HomeNewsState.initial()) {
    on<HomeNewsEvent> ((event, emit) async {
      await event.when(
          appStarted: () async {
            emit(const HomeNewsState.loadingNews());
            try {
              _news = await SearchNewsService().getNews();
              emit(HomeNewsState.loadedNews(_news));
            } on DioError catch (dioError) {
              emit(HomeNewsState.newsError(
                  APIError.fromDioError(dioError).message ?? tr("error.unexpected_error"))
              );
            }
          },
          searchNews: (String query) async {
            _currentPage = 1;
            emit(const HomeNewsState.loadingNews());
            emit(const HomeNewsState.resetList());
            try {
              _news = await SearchNewsService().getNews(
                  queryTerm: query,
                  orderBy: FiltersData().orderBy,
                  fromDate: FiltersData().fromDate,
                  toDate: FiltersData().toDate
              );
              emit(HomeNewsState.loadedNews(_news));
            } on DioError catch (dioError) {
              emit(HomeNewsState.newsError(
                  APIError.fromDioError(dioError).message ?? tr("error.unexpected_error"))
              );
            }
          },
          orderBy: (String orderBy) async{
            _currentPage = 1;
            emit(const HomeNewsState.loadingNews());
            emit(const HomeNewsState.resetList());
            try {
              _news = await SearchNewsService().getNews(
                  queryTerm: FiltersData().searchQuery,
                  orderBy: orderBy,
                  fromDate: FiltersData().fromDate,
                  toDate: FiltersData().toDate
              );
              emit(HomeNewsState.loadedNews(_news));
            } on DioError catch (dioError) {
              emit(HomeNewsState.newsError(
                  APIError.fromDioError(dioError).message ?? tr("error.unexpected_error"))
              );
            }
           },
          selectDate: (String fromDate, String toDate) async{
            _currentPage = 1;
            emit(const HomeNewsState.loadingNews());
            emit(const HomeNewsState.resetList());
            try {
              _news = await SearchNewsService().getNews(
                  queryTerm: FiltersData().searchQuery,
                  orderBy: FiltersData().orderBy,
                  fromDate: fromDate,
                  toDate: toDate
              );
              emit(HomeNewsState.loadedNews(_news));
            } on DioError catch (dioError) {
              emit(HomeNewsState.newsError(
                  APIError.fromDioError(dioError).message ?? tr("error.unexpected_error"))
              );
            }
          },
          loadNextPage: () async {
            emit(const HomeNewsState.loadingNews());
            _currentPage = _currentPage + 1;
            try {
              debugPrint("Current page $_currentPage");
              _news = await SearchNewsService().getNews(
                  queryTerm: FiltersData().searchQuery,
                  orderBy: FiltersData().orderBy,
                  fromDate: FiltersData().fromDate,
                  toDate: FiltersData().toDate,
                  currentPage: _currentPage
              );
              emit(HomeNewsState.loadedNews(_news));
            } on DioError catch (dioError) {
              emit(HomeNewsState.newsError(
                  APIError.fromDioError(dioError).message ?? tr("error.unexpected_error"))
              );
            }
          }
      );
    });
  }
}