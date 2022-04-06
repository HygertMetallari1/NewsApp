import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:newsapp/data/dio_error_handler.dart';
import 'package:newsapp/data/models/news/news.dart';
import 'package:newsapp/data/services/news_service.dart';

part 'culture_tab_bloc.freezed.dart';
part 'culture_tab_event.dart';
part 'culture_tab_state.dart';

class CultureTabBloc extends Bloc<CultureTabEvent, CultureTabState>{

  List<NewsItem> _news = [];
  int  _currentPage = 1;
  int _pages = 0;
  String _currentSection = "";

  CultureTabBloc() : super(const CultureTabState.initial()) {
    on<CultureTabEvent>((event, emit) async{
      await event.when(
          loadNews: (chosenSection) async{
            _loadReset(emit);
            _currentSection = chosenSection ?? "culture";
            try {
              _news = await NewsService().getNewsSection(_currentPage, _currentSection);
              _checkPages(_news);
              _emitCultureTabList(emit);
            } on DioError catch (error) {
              emit(CultureTabState.newsError(
                  APIErrorHandler.fromDioError(error).message ?? tr("error.unexpected_error"))
              );
            }
          },
          loadNextPage: () async {
            emit(const CultureTabState.loadingNews());
            _currentPage = _currentPage + 1;
            try {
              if(_pages != 0) {
                if(_currentPage < _pages) {
                  _news = await NewsService().getNewsSection(_currentPage, _currentSection);
                }
                _emitCultureTabList(emit);
              }
            } on DioError catch (error) {
              emit(CultureTabState.newsError(
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

  void _emitCultureTabList(Emitter<CultureTabState> emit) {
    if (_currentPage == _pages || _currentPage > _pages) {
      emit(CultureTabState.loadedNews(_news, isTheEndOfList: true));
    } else {
      emit(CultureTabState.loadedNews(_news));
    }
  }

  void _loadReset(Emitter<CultureTabState> emit) {
    emit(const CultureTabState.resetList());
    emit(const CultureTabState.loadingNews());
    _pages = 0;
    _currentPage = 1;
  }
}