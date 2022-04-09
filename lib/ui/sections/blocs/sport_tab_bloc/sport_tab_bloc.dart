import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:newsapp/data/dio_error_handler.dart';

import 'package:newsapp/data/models/news/news.dart';
import 'package:newsapp/data/services/news_service.dart';

part 'sport_tab_bloc.freezed.dart';
part 'sport_tab_event.dart';
part 'sport_tab_state.dart';

class SportTabBloc extends Bloc<SportTabEvent, SportTabState> {
  List<NewsItem> _news = [];
  int  _currentPage = 1;
  int _pages = 0;
  static const String _currentSection = "sport";

  SportTabBloc() : super(const SportTabState.initial()) {
    on<SportTabEvent> ((event, emit) async {
      await event.when(
          loadNews: () async {
            _loadReset(emit);
            try {
              _news = await NewsService().getNewsSection(_currentPage, _currentSection);
              _checkPages(_news);
              _emitSportTabList(emit);
            } on DioError catch (error) {
              emit(SportTabState.newsError(
                  APIErrorHandler.fromDioError(error).message ?? tr("error.unexpected_error"))
              );
            }
          },
          loadNextPage: () async {
            emit(const SportTabState.loadingNews());
            _currentPage = _currentPage + 1;
            try {
              if(_pages != 0) {
                if(_currentPage < _pages) {
                  _news = await NewsService().getNewsSection(_currentPage, _currentSection);
                }
                _emitSportTabList(emit);
              }
              } on DioError catch (error) {
                emit(SportTabState.newsError(
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

  void _emitSportTabList(Emitter<SportTabState> emit) {
    if (_currentPage == _pages || _currentPage > _pages) {
      emit(SportTabState.loadedNews(_news, true));
    } else {
      emit(SportTabState.loadedNews(_news, false));
    }
  }

  void _loadReset(Emitter<SportTabState> emit) {
    emit(const SportTabState.resetList());
    emit(const SportTabState.loadingNews());
    _pages = 0;
    _currentPage = 1;
  }
}