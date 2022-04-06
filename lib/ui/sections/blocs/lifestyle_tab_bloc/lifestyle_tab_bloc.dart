import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:newsapp/data/dio_error_handler.dart';
import 'package:newsapp/data/models/news/news.dart';
import 'package:newsapp/data/services/news_service.dart';

part 'lifestyle_tab_bloc.freezed.dart';
part 'lifestyle_tab_event.dart';
part 'lifestyle_tab_state.dart';

class LifestyleTabBloc extends Bloc<LifestyleTabEvent, LifestyleTabState>{

  List<NewsItem> _news = [];
  int  _currentPage = 1;
  int _pages = 0;
  String _currentSection = "";

  LifestyleTabBloc() : super(const LifestyleTabState.initial()) {
    on<LifestyleTabEvent>((event, emit) async {
      await event.when(
          loadNews: (chosenSection) async{
            _loadReset(emit);
            _currentSection = chosenSection ?? "lifeandstyle";
            try {
              _news = await NewsService().getNewsSection(_currentPage, _currentSection);
              _checkPages(_news);
              _emitLifestyleTabList(emit);
            } on DioError catch (error) {
              emit(LifestyleTabState.newsError(
                  APIErrorHandler.fromDioError(error).message ?? tr("error.unexpected_error"))
              );
            }
          },
          loadNextPage: () async {
            emit(const LifestyleTabState.loadingNews());
            _currentPage = _currentPage + 1;
            try {
              if(_pages != 0) {
                if(_currentPage < _pages) {
                  _news = await NewsService().getNewsSection(_currentPage, _currentSection);
                }
                _emitLifestyleTabList(emit);
              }
            } on DioError catch (error) {
              emit(LifestyleTabState.newsError(
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

  void _emitLifestyleTabList(Emitter<LifestyleTabState> emit) {
    if (_currentPage == _pages || _currentPage > _pages) {
      emit(LifestyleTabState.loadedNews(_news, isTheEndOfList: true));
    } else {
      emit(LifestyleTabState.loadedNews(_news));
    }
  }

  void _loadReset(Emitter<LifestyleTabState> emit) {
    emit(const LifestyleTabState.resetList());
    emit(const LifestyleTabState.loadingNews());
    _pages = 0;
    _currentPage = 1;
  }
}