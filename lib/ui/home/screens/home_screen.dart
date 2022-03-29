import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:newsapp/app/shared_widgets/na_app_bar.dart';
import 'package:newsapp/app/shared_widgets/na_error_screen.dart';
import 'package:newsapp/app/shared_widgets/na_news_item.dart';
import 'package:newsapp/app/shared_widgets/touchable_opacity.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/endpoints.dart';
import 'package:newsapp/data/models/news/news.dart';
import 'package:newsapp/data/models/weather/weather.dart';
import 'package:newsapp/ui/home/bloc/home_news_bloc/home_news_bloc.dart';
import 'package:newsapp/ui/home/bloc/weather_bloc/weather_bloc.dart';
import 'package:newsapp/ui/home/screens/weather_bottom_sheet.dart';
import 'package:newsapp/ui/home/widgets/filters/date_selector.dart';
import 'package:newsapp/ui/home/widgets/filters/order_by_pop_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key = const PageStorageKey('homeNews')}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final ScrollController _scrollController = ScrollController();
  HomeBlocNews homeBlocNews = HomeBlocNews();
  List<NewsItem> _news = [];
  bool isLoading = false;

  void updateNewsState() {
    final fetchedNews = PageStorage.of(context)!.readState(context, identifier: widget.key);
    if (fetchedNews != null) {
      setState(() {
        _news = fetchedNews;
      });
    } else {
      homeBlocNews.add(const HomeNewsEvent.loadNextPage());
    }
  }

  void saveToPageStorage(List<NewsItem> newNewsState) {
    PageStorage.of(context)!
        .writeState(context, newNewsState, identifier: widget.key);
  }

  @override
  void didChangeDependencies() {
    homeBlocNews = BlocProvider.of<HomeBlocNews>(context);
    _scrollController.addListener(() {
      if (isScrollAtBottom()) {
        homeBlocNews.add(const HomeNewsEvent.loadNextPage());
      }
    });
    updateNewsState();
    super.didChangeDependencies();
  }


  bool isScrollAtBottom() {
    if (_scrollController.position.maxScrollExtent == _scrollController.offset) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: NAAppBar(
        showSearchButton: true,
        appBarTitle: tr("navigation.home_tab"),
      ),
      body: _buildBody(context, theme),
    );
  }

  @swidget
  _buildBody(BuildContext context, ThemeData theme) {
    return BlocListener<HomeBlocNews, HomeNewsState>(
      listener: (context, state) {
        state.maybeWhen(
            loadingNews: () {
                isLoading = true;
            },
            loadedNews: (news) {
              setState(() {
                isLoading = false;
                _news.addAll(news);
              });
              debugPrint("_newsLength ${_news.length}");
              saveToPageStorage(_news);
            },
            newsError: (newsError) {
              return NAErrorScreen(
                errorMessage: newsError,
              );
            },
            orElse: () => const SizedBox()
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0, right: 20.0),
        child: Column(
          children: <Widget>[
            _buildTopRow(context, theme),
            _buildSecondTopRow(),
            if(isLoading == true)... [
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 4),
                child: const Center(
                    child: CircularProgressIndicator(
                    color: NAColors.blue,
                 ),
                ),
              )
            ] else ... [
              _buildListView(context)
            ]
          ],
        ),
      ),
    );
  }
  @swidget
  _buildTopRow(BuildContext context, ThemeData theme) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              convertCurrentTime(),
              style: theme.textTheme.bodyText1?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.1,
              ),
            ),
          ),
          _buildWeatherButton(context, theme)
        ],
      ),
    );
  }

  @swidget
  _buildWeatherButton(BuildContext context, ThemeData theme) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return const Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: SizedBox(
                width: 20,
                height: 20,
                child: Center(
                  child: CircularProgressIndicator(
                    color: NAColors.blue,
                  ),
                ),
              ),
            );
          },
          weatherLoaded: (forecastingList) {
            WeatherItem currentDay = forecastingList[0];
            return OutlinedButton(
                clipBehavior: Clip.hardEdge,
                style: ButtonStyle (
                  shape: MaterialStateProperty
                      .all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )
                  ),
                ),
                onPressed: () => _showWeatherBottomSheet(context, theme, forecastingList),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      convertMaxTemp(currentDay.maxTemp),
                      style: theme.textTheme.caption?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: NAColors.black,
                        fontSize: 17
                      ),
                    ),
                    Image.network(
                      Endpoints().getIconUrl(currentDay.icon),
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
            );
          },
          weatherError: (weatherError) {
            return SizedBox(
              child: Text(
                weatherError ?? tr("errors.unexpected_error"),
                style: theme.textTheme.caption?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: NAColors.error,
                    fontSize: 15
                ),
              )
            );
          }, orElse: () => const SizedBox()
        );
      },
    );
  }
  
  _showWeatherBottomSheet(
      BuildContext context,
      ThemeData theme,
      List<WeatherItem> forecastingList) {
    return showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return WeatherBottomSheet(forecastingList: forecastingList);
        }
    );
  }

  @swidget
  _buildSecondTopRow() {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          OrderByMenu(),
          DateSelector(),
        ],
      ),
    );
  }

  @swidget
  _buildListView(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          controller: _scrollController,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: _news.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                NewsItemUi(
                      headline: _news[index].headline,
                      trailText: _news[index].trailText,
                      publishDate:  _news[index].publishDate,
                      author:  _news[index].author,
                      content:  _news[index].content,
                      thumbnail:  _news[index].thumbnail
                  ),
                const Divider(
                  color: NAColors.gray,
                )
              ]
            );
          }
      ),
    );
  }
}

