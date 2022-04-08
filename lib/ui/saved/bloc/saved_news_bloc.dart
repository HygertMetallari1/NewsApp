import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/data/models/news/news.dart';
import 'package:newsapp/data/saved_news_db.dart';

part 'saved_news_bloc.freezed.dart';
part 'saved_news_event.dart';
part 'saved_news_state.dart';

class SavedNewsBloc extends Bloc<SavedNewsEvent, SavedNewsState> {
  List<NewsItem> _news = [];

  SavedNewsBloc() : super(const SavedNewsState.initial()) {
    on<SavedNewsEvent>((event, emit) async{
        await event.when(
            loadSavedNews: () async {
              emit(const SavedNewsState.loadingSavedNews());
              try {
                List<NewsItem> savedNews = SavedNews().getSavedNews();
                _emitSavedNews(emit, savedNews);
              } catch (error) {
                _emitError(emit);
                rethrow;
              }
            },
            saveNews: (news) async {
              emit(const SavedNewsState.loadingSavedNews());
              try {
                await SavedNews().saveNews(news);
                add(const SavedNewsEvent.loadSavedNews());
              } catch (error) {
                _emitError(emit);
                rethrow;
              }
            },
            removeNews: (news) {
              emit(const SavedNewsState.loadingSavedNews());
              try {
                debugPrint("Delete executed");
                SavedNews().removeSavedNews(news);
                add(const SavedNewsEvent.loadSavedNews());
              } catch (error) {
                _emitError(emit);
                rethrow;
              }
            }
        );
    });
  }

  void _emitSavedNews(Emitter<SavedNewsState> emit, List<NewsItem> news) {
    _news.clear();
    _news = news;
    emit(SavedNewsState.loadedSavedNews(_news));
  }

  void _emitError(Emitter<SavedNewsState> emit) {
    emit(SavedNewsState.savedNewsError(tr("errors.saved_news_error")));
    //throw hiveError;
  }
}