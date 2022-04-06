import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:newsapp/app/shared_widgets/na_error_screen.dart';
import 'package:newsapp/app/shared_widgets/na_list_view.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/models/news/news.dart';
import 'package:newsapp/ui/news_list_mixin.dart';
import 'package:newsapp/ui/sections/blocs/lifestyle_tab_bloc/lifestyle_tab_bloc.dart';

class LifestyleTab extends StatefulWidget {
  const LifestyleTab({Key? key= const PageStorageKey('lifestyleTab')}) : super(key: key);

  @override
  _LifestyleTabState createState() => _LifestyleTabState();
}

class _LifestyleTabState extends State<LifestyleTab> with NewsListMixin{
  LifestyleTabBloc lifestyleTabBloc = LifestyleTabBloc();
  List<NewsItem> _news = [];
  bool? _isTheEndOfList;
  int? _selectedSubCategory = -1;

  static List<String> subCategories = <String>[
    tr("sub_categories.life_and_style_tab.food"),
    tr("sub_categories.life_and_style_tab.fashion"),
    tr("sub_categories.life_and_style_tab.film"),
    tr("sub_categories.life_and_style_tab.travel"),
  ];

  @override
  void didChangeDependencies() {
    lifestyleTabBloc = BlocProvider.of<LifestyleTabBloc>(context);
    setState(() {
      _news = getStoredNewsList();
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        body: RefreshIndicator(
          onRefresh: () async {
            return lifestyleTabBloc.add(const LifestyleTabEvent.loadNews());
          },
          color: NAColors.blue,
          child: BlocListener<LifestyleTabBloc, LifestyleTabState>(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ..._buildLifestyleSectionChipMenu(context, theme),
                      ],
                    ),
                    BlocBuilder<LifestyleTabBloc, LifestyleTabState>(
                      builder: (context, state) {
                        return state.maybeWhen(loadingNews: () {
                          if (_news.isEmpty) {
                            return Padding(
                              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 5 ),
                              child: const Center(
                                child: CircularProgressIndicator(
                                  color: NAColors.blue,
                                ),
                              ),
                            );
                          }
                          return NewsListView(
                            news: _news,
                            isTheEndOfList: _isTheEndOfList,
                            blocType: LifestyleTabBloc,
                          );
                        }, loadedNews: (news, isTheEndOfList) {
                          if (news.isEmpty) {
                            return NAErrorScreen(
                                errorMessage: (tr("errors.empty_list")));
                          }
                          if (areTheSame(_news, news) == false) {
                            _saveLifestyleNewsToPageStorage(news, isTheEndOfList);
                          }
                          return NewsListView(
                            news: _news,
                            isTheEndOfList: _isTheEndOfList,
                            blocType: LifestyleTabBloc,
                          );
                        }, newsError: (newsError) {
                          return NAErrorScreen(
                            errorMessage: newsError,
                          );
                        }, orElse: () {
                          return NewsListView(
                            news: _news,
                            isTheEndOfList: _isTheEndOfList,
                            blocType: LifestyleTabBloc,
                          );
                        });
                      },
                    ),
                  ],
                )),
          ),
        ));
  }

  @swidget
  _buildLifestyleSectionChipMenu(BuildContext context, ThemeData theme) {
    return List.generate(
        subCategories.length,
            (index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: ChoiceChip(
            label: Text(
              subCategories[index],
              style: theme.textTheme.bodyText2?.copyWith(
                  color: _selectedSubCategory == index
                      ? NAColors.white
                      : NAColors.black),
            ),
            side: BorderSide(
                color: _selectedSubCategory == index
                    ? NAColors.white
                    : NAColors.black.withOpacity(0.1)),
            selectedColor: NAColors.blue,
            backgroundColor: NAColors.white,
            selected: _selectedSubCategory == index,
            onSelected: (selected) {
              setState(() {
                _selectedSubCategory = selected ? index : null;
              });
              BlocProvider.of<LifestyleTabBloc>(context).add(
                  LifestyleTabEvent.loadNews(
                      chosenSection: subCategories[index].toLowerCase()));
            },
          ),
        ));
  }

  void _saveLifestyleNewsToPageStorage(List<NewsItem> news, bool? isTheEndOfList) {
    _news.addAll(news);
    _isTheEndOfList = isTheEndOfList;
    saveToPageStorage(_news);
  }
}
