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
  int _pages = 0;

  HomeBlocNews() : super(const HomeNewsState.initial()) {
    on<HomeNewsEvent> ((event, emit) async {
      await event.when(
          unfilteredNews: () async {
            _loadReset(emit);
            try {
              _news = await SearchNewsService().getNews();
              _checkPages(_news);
              _emitHomeNewsList(emit);
            }  on DioError catch (error) {
              emit(HomeNewsState.newsError(
                  APIErrorHandler.fromDioError(error).message ?? tr("error.unexpected_error"))
              );
            }
          },
          searchNews: (String? query) async {
            _loadReset(emit);
            try {
              _news = await SearchNewsService().getNews(
                  queryTerm: query,
                  orderBy: FiltersData().orderBy,
                  fromDate: FiltersData().fromDate,
                  toDate: FiltersData().toDate
              );
              _checkPages(_news);
              _emitHomeNewsList(emit);
            }  on DioError catch (error) {
              emit(HomeNewsState.newsError(
                  APIErrorHandler.fromDioError(error).message ?? tr("error.unexpected_error"))
              );
            }
          },
          orderBy: (String? orderBy) async{
            _loadReset(emit);
            try {
              _news = await SearchNewsService().getNews(
                  queryTerm: FiltersData().searchQuery,
                  orderBy: orderBy,
                  fromDate: FiltersData().fromDate,
                  toDate: FiltersData().toDate
              );
              _checkPages(_news);
              _emitHomeNewsList(emit);
            }  on DioError catch (error) {
              emit(HomeNewsState.newsError(
                  APIErrorHandler.fromDioError(error).message ?? tr("error.unexpected_error"))
              );
            }
           },
          selectDate: (String? fromDate, String? toDate) async{
            _loadReset(emit);
            try {
              _news = await SearchNewsService().getNews(
                  queryTerm: FiltersData().searchQuery,
                  orderBy: FiltersData().orderBy,
                  fromDate: fromDate,
                  toDate: toDate
              );
              _checkPages(_news);
              _emitHomeNewsList(emit);
            } on DioError catch (error) {
              emit(HomeNewsState.newsError(
                  APIErrorHandler.fromDioError(error).message ?? tr("error.unexpected_error"))
              );
            }
          },
          loadNextPage: () async {
            emit(const HomeNewsState.loadingNews());
            _currentPage = _currentPage + 1;
            try {
              if(_pages != 0) {
                if(_currentPage < _pages) {
                  _news = await SearchNewsService().getNews(
                      queryTerm: FiltersData().searchQuery,
                      orderBy: FiltersData().orderBy,
                      fromDate: FiltersData().fromDate,
                      toDate: FiltersData().toDate,
                      currentPage: _currentPage
                  );
                }
                _emitHomeNewsList(emit);
              }
            } on DioError catch (error) {
              emit(HomeNewsState.newsError(
                  APIErrorHandler.fromDioError(error).message ?? tr("error.unexpected_error"))
              );
            }
          }
      );
    });
  }

  void _checkPages(List<NewsItem> news) {
    if(news.isNotEmpty) {
      _pages = news[0].pages!;
    }
  }

  void _emitHomeNewsList(Emitter<HomeNewsState> emit) {
    if (_currentPage == _pages || _currentPage > _pages) {
      emit(HomeNewsState.loadedNews(_news, isTheEndOfList: true)); // To check if there is no more news of the current query
    } else {
      emit(HomeNewsState.loadedNews(_news));
    }
  }

  void _loadReset(Emitter<HomeNewsState> emit) {
    emit(const HomeNewsState.resetList());
    emit(const HomeNewsState.loadingNews());
    _pages = 0;
    _currentPage = 1;
  }

  /*@override
  void onChange(Change<HomeNewsState> change) {
    debugPrint("Old state is🟢 ${change.currentState}");
    debugPrint("New state is🔵 ${change.nextState}");
    super.onChange(change);
  }*/
}