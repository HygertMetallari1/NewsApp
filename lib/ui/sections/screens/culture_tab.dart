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
import 'package:newsapp/ui/sections/blocs/culture_tab_bloc/culture_tab_bloc.dart';

class CultureTab extends StatefulWidget {
  const CultureTab({Key? key = const PageStorageKey('cultureTab')})
      : super(key: key);

  @override
  _CultureTabState createState() => _CultureTabState();
}

class _CultureTabState extends State<CultureTab> with HelperMixin {
  CultureTabBloc cultureTabBloc = CultureTabBloc();
  List<NewsItem> _news = [];
  bool _isTheEndOfList = false;
  int _selectedSubCategory = -1;

  static const int _cultureSectionIndex = 3;
  static List<String> subCategories = <String>[
    tr("sub_categories.culture_tab.books"),
    tr("sub_categories.culture_tab.music"),
    tr("sub_categories.culture_tab.tv_and_radio"),
    tr("sub_categories.culture_tab.games"),
    tr("sub_categories.culture_tab.stage"),
  ];

  @override
  void didChangeDependencies() {
    cultureTabBloc = BlocProvider.of<CultureTabBloc>(context);
    cultureTabBloc.state.whenOrNull(
      newsError: (error) => cultureTabBloc..add(CultureTabEvent.loadNews(
          chosenSection: _selectedSubCategory == -1
              ? null
              : subCategories[_selectedSubCategory]
        )
      )
    );
    setState(() {
      _selectedSubCategory = getSubSectionIndex(_cultureSectionIndex);
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
        return cultureTabBloc.add(const CultureTabEvent.loadNews());
      },
      color: NAColors.blue,
      child: BlocListener<CultureTabBloc, CultureTabState>(
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
                    clipBehavior: Clip.hardEdge,
                    scrollDirection: Axis.horizontal,
                    physics: const ScrollPhysics(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ..._buildLifestyleSectionChipMenu(context, theme),
                      ],
                    ),
                  ),
                ),
                BlocBuilder<CultureTabBloc, CultureTabState>(
                  builder: (context, state) {
                    return state.maybeWhen(loadingNews: () {
                      if (_news.isEmpty) {
                        return buildIndicator(progressIndicator());
                      }
                      return NewsListView(
                        news: _news,
                        isTheEndOfList: _isTheEndOfList,
                        blocType: CultureTabBloc,
                      );
                    }, loadedNews: (news, isTheEndOfList) {
                      if (news.isEmpty) {
                        return buildIndicator(NAErrorScreen(errorMessage: (tr("errors.empty_list"))));
                      }
                      if (areTheSame(_news, news) == false) {
                        _saveCultureNewsToPageStorage(news, isTheEndOfList);
                      }
                      return NewsListView(
                        news: _news,
                        isTheEndOfList: _isTheEndOfList,
                        blocType: CultureTabBloc,
                      );
                    }, newsError: (newsError) {
                      return buildIndicator(NAErrorScreen(errorMessage: newsError,));
                    }, orElse: () {
                      return NewsListView(
                        news: _news,
                        isTheEndOfList: _isTheEndOfList,
                        blocType: CultureTabBloc,
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
                          : isDarkMode(context) ? NAColors.white70 : NAColors.black),
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
                    _selectedSubCategory = (selected ? index : null)!;
                    saveSubSectionIndex(selected ? index : -1, _cultureSectionIndex);
                  });
                  BlocProvider.of<CultureTabBloc>(context).add(
                      CultureTabEvent.loadNews(
                          chosenSection: subCategories[index].toLowerCase()));
                },
              ),
            )
        );
  }

  void _saveCultureNewsToPageStorage(
      List<NewsItem> news, bool isTheEndOfList) {
    _news.addAll(news);
    _isTheEndOfList = isTheEndOfList;
    saveToPageStorage(_news);
  }
}
