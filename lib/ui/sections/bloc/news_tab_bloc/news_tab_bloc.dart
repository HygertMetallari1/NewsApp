import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:newsapp/data/dio_error_handler.dart';
import 'package:newsapp/data/models/news/news.dart';
import 'package:newsapp/data/services/news_service/news_sections_service.dart';

part 'news_tab_bloc.freezed.dart';
part 'news_tab_event.dart';
part 'news_tab_state.dart';

class NewsTabBloc extends Bloc<NewsTabEvent, NewsTabState> {
  List<NewsItem> _news = [];
  int  _currentPage = 1;
  int _pages = 0;

  NewsTabBloc() : super(const NewsTabState.initial()) {
    on<NewsTabEvent> ((event, emit) async {
      await event.when(
        loadNews: () async{
          _loadReset(emit);
          try {
            _news = await NewsSectionsService().getNewsSection(_currentPage);
            _checkPages(_news);
            _emitHomeNewsList(emit);
          } on DioError catch (error) {
            emit(NewsTabState.newsError(
                APIErrorHandler.fromDioError(error).message ?? tr("error.unexpected_error"))
            );
          }
        },
        loadNextPage: () async {
          emit(const NewsTabState.loadingNews());
          _currentPage = _currentPage + 1;
          try {
            if(_pages != 0) {
              if(_currentPage < _pages) {
                _news = await NewsSectionsService().getNewsSection(_currentPage);
              }
              _emitHomeNewsList(emit);
            }
          } on DioError catch (error) {
            emit(NewsTabState.newsError(
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

  void _emitHomeNewsList(Emitter<NewsTabState> emit) {
    if (_currentPage == _pages || _currentPage > _pages) {
      emit(NewsTabState.loadedNews(_news, isTheEndOfList: true));
    } else {
      emit(NewsTabState.loadedNews(_news));
    }
  }

  void _loadReset(Emitter<NewsTabState> emit) {
    emit(const NewsTabState.resetList());
    emit(const NewsTabState.loadingNews());
    _pages = 0;
    _currentPage = 1;
  }
}