import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:newsapp/app/shared_widgets/na_error_screen.dart';
import 'package:newsapp/app/shared_widgets/na_list_view.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/models/news/news.dart';
import 'package:newsapp/ui/helper_mixin.dart';
import 'package:newsapp/ui/sections/blocs/news_tab_bloc/news_tab_bloc.dart';


class NewsTab extends StatefulWidget {
  const NewsTab({Key? key = const PageStorageKey('newsTab')}) : super(key: key);

  @override
  _NewsTabState createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> with HelperMixin{
  NewsTabBloc newsTabBloc = NewsTabBloc();
  List<NewsItem> _news = [];
  bool? _isTheEndOfList;
  int? _selectedSubCategory = 0;

  static const int _newsSectionIndex = 0;
  static List<String> subCategories = <String>[
    tr("sub_categories.news_tab.world"),
    tr("sub_categories.news_tab.politics"),
    tr("sub_categories.news_tab.environment"),
    tr("sub_categories.news_tab.science"),
    tr("sub_categories.news_tab.business"),
    tr("sub_categories.news_tab.technology"),
  ];


  @override
  void didChangeDependencies() {
    newsTabBloc = BlocProvider.of<NewsTabBloc>(context);
      setState(() {
        _news = getStoredNewsList();
        _selectedSubCategory = getSubSectionIndex(_newsSectionIndex);
      });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
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
                ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: const  BorderRadius.horizontal(
                    left: Radius.circular(45),
                    right: Radius.circular(45)
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.hardEdge,
                    physics: const ScrollPhysics(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ..._buildNewsSectionChipMenu(context, theme),
                      ],
                    ),
                  ),
                ),
                BlocBuilder<NewsTabBloc, NewsTabState>(
                  builder: (context, state) {
                    return state.maybeWhen(loadingNews: () {
                      if (_news.isEmpty) {
                        return Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 5 ),
                          child: progressIndicator()
                        );
                      }
                      return NewsListView(
                        news: _news,
                        isTheEndOfList: _isTheEndOfList,
                        blocType: NewsTabBloc,
                      );
                    }, loadedNews: (news, isTheEndOfList) {
                      if (news.isEmpty) {
                        return NAErrorScreen(
                            errorMessage: (tr("errors.empty_list")));
                      }
                      if (areTheSame(_news, news) == false) {
                        _saveHomeNewsToPageStorage(news, isTheEndOfList);
                      }
                      return NewsListView(
                        news: _news,
                        isTheEndOfList: _isTheEndOfList,
                        blocType: NewsTabBloc,
                      );
                    }, newsError: (newsError) {
                      return NAErrorScreen(
                        errorMessage: newsError,
                      );
                    }, orElse: () {
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

  @swidget
  _buildNewsSectionChipMenu(BuildContext context, ThemeData theme) {
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
                          : isDarkMode(context) ? NAColors.white70 : NAColors.black,
                  ),
                ),
                side: BorderSide(
                    color: _selectedSubCategory == index
                        ? NAColors.white
                        : isDarkMode(context) ? NAColors.white70 : NAColors.black.withOpacity(0.1)),
                selectedColor: NAColors.blue,
                backgroundColor: isDarkMode(context) ? NAColors.black :NAColors.white,
                selected: _selectedSubCategory == index,
                onSelected: (selected) {
                  setState(() {
                    _selectedSubCategory = selected ? index : null;
                    saveSubSectionIndex(selected ? index : 0, _newsSectionIndex);
                  });
                  BlocProvider.of<NewsTabBloc>(context).add(
                      NewsTabEvent.loadNews(
                          chosenSection: subCategories[index].toLowerCase()));
                },
              ),
            ));
        }

  void _saveHomeNewsToPageStorage(List<NewsItem> news, bool? isTheEndOfList) {
    _news.addAll(news);
    _isTheEndOfList = isTheEndOfList;
    saveToPageStorage(_news);
  }
}
