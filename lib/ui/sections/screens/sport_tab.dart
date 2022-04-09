import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/app/shared_widgets/na_error_screen.dart';
import 'package:newsapp/app/shared_widgets/na_list_view.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/models/news/news.dart';
import 'package:newsapp/ui/helper_mixin.dart';
import 'package:newsapp/ui/sections/blocs/sport_tab_bloc/sport_tab_bloc.dart';

class SportTab extends StatefulWidget {
  const SportTab({Key? key = const PageStorageKey('sportTab')}) : super(key: key);

  @override
  _SportTabState createState() => _SportTabState();
}

class _SportTabState extends State<SportTab> with HelperMixin{
  SportTabBloc sportTabBloc = SportTabBloc();
  List<NewsItem> _news = [];
  bool _isTheEndOfList = false;

  @override
  void didChangeDependencies() {
    sportTabBloc = BlocProvider.of<SportTabBloc>(context);
    sportTabBloc.state.whenOrNull(
        newsError: (error) => sportTabBloc..add(const SportTabEvent.loadNews())
    );
    setState(() {
      _news = getStoredNewsList();
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RefreshIndicator(
          onRefresh: () async {
            return sportTabBloc.add(const SportTabEvent.loadNews());
          },
          color: NAColors.blue,
          child: BlocListener<SportTabBloc, SportTabState>(
            listener: (context, state) {
              state.whenOrNull(resetList: () {
                _news = [];
                saveToPageStorage(_news);
              });
            },
            child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 20.0, right: 20.0),
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    children: [
                      BlocBuilder<SportTabBloc, SportTabState>(
                        builder: (context, state) {
                          return state.maybeWhen(loadingNews: () {
                            if (_news.isEmpty) {
                              return buildIndicator(progressIndicator());
                            }
                            return NewsListView(
                              news: _news,
                              isTheEndOfList: _isTheEndOfList,
                              blocType: SportTabBloc,
                            );
                          }, loadedNews: (news, isTheEndOfList) {
                            if (news.isEmpty) {
                              return  buildIndicator(NAErrorScreen(errorMessage: (tr("errors.empty_list"))));
                            }
                            if (areTheSame(_news, news) == false) {
                              _saveSportNewsToPageStorage(news, isTheEndOfList);
                            }
                            return NewsListView(
                              news: _news,
                              isTheEndOfList: _isTheEndOfList,
                              blocType: SportTabBloc,
                            );
                          }, newsError: (newsError) {
                            return buildIndicator(NAErrorScreen(errorMessage: newsError,));
                          }, orElse: () {
                            return NewsListView(
                              news: _news,
                              isTheEndOfList: _isTheEndOfList,
                              blocType: SportTabBloc,
                            );
                          });
                        },
                      ),
                    ],
                  ),
                )),
          ),
        ));
  }

  void _saveSportNewsToPageStorage(List<NewsItem> news, bool isTheEndOfList) {
    _news.addAll(news);
    _isTheEndOfList = isTheEndOfList;
    saveToPageStorage(_news);
  }
}
