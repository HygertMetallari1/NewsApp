import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/app/shared_widgets/na_error_screen.dart';
import 'package:newsapp/app/shared_widgets/na_list_view.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/models/news/news.dart';
import 'package:newsapp/ui/sections/bloc/news_tab_bloc/news_tab_bloc.dart';

class NewsTab extends StatefulWidget {
  const NewsTab({Key? key = const PageStorageKey('newsTab')}) : super(key: key);

  @override
  _NewsTabState createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> {
  NewsTabBloc newsTabBloc = NewsTabBloc();
  List<NewsItem> _news = [];
  bool? _isTheEndOfList;

  void updateNewsTabState() {
    final fetchedNews =
        PageStorage.of(context)!.readState(context, identifier: widget.key);
    if (fetchedNews != null) {
      _news = fetchedNews;
    }
  }

  void saveToPageStorage(List<NewsItem> newNewsState) {
    PageStorage.of(context)!
        .writeState(context, newNewsState, identifier: widget.key);
  }

  @override
  void didChangeDependencies() {
    updateNewsTabState();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RefreshIndicator(
        onRefresh: () async {
          return newsTabBloc.add(const NewsTabEvent.loadNews());
        },
      color: NAColors.blue,
      child: BlocListener<NewsTabBloc, NewsTabState>(
        listener: (context, state) {
          state.whenOrNull(resetList: () {
            _news = [];
            saveToPageStorage(_news);
          });
        },
        child: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                BlocBuilder<NewsTabBloc, NewsTabState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                        loadingNews: () {
                          if(_news.isEmpty) {
                            return const Center(
                              child: CircularProgressIndicator(
                                color: NAColors.blue,
                              ),
                            );
                          }
                          return NewsListView(
                            news: _news,
                            isTheEndOfList: _isTheEndOfList,
                            blocType: NewsTabBloc,
                          );
                        },
                        loadedNews: (news, isTheEndOfList) {
                          if(news.isEmpty) {
                            return  NAErrorScreen(errorMessage: (tr("errors.empty_list")));
                          }
                          if(areTheSame(_news, news) == false) {
                            _saveHomeNewsToPageStorage(news, isTheEndOfList);
                          }
                          return NewsListView(
                            news: _news,
                            isTheEndOfList: _isTheEndOfList,
                            blocType: NewsTabBloc,
                          );
                        },
                        newsError: (newsError) {
                          return NAErrorScreen(
                            errorMessage: newsError,
                          );
                        },
                        orElse: () {
                          return NewsListView(
                          news: _news,
                          isTheEndOfList: _isTheEndOfList,
                          blocType: NewsTabBloc,
                      );
                    });
                  },
                ),
              ],
            )),
      ),
    ));
  }
  void _saveHomeNewsToPageStorage(List<NewsItem> news, bool? isTheEndOfList) {
    _news.addAll(news);
    _isTheEndOfList = isTheEndOfList;
    saveToPageStorage(_news);
  }
}
