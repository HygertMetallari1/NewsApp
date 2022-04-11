import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:newsapp/app/shared_widgets/na_app_bar.dart';
import 'package:newsapp/app/shared_widgets/na_error_screen.dart';
import 'package:newsapp/app/shared_widgets/na_list_view.dart';
import 'package:newsapp/app/shared_widgets/na_network_image.dart';
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
import 'package:newsapp/ui/helper_mixin.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key = const PageStorageKey('homeNews')}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with HelperMixin{

  HomeBlocNews homeBlocNews = HomeBlocNews();
  List<NewsItem> _news = [];
  bool _isTheEndOfList = false;


  @override
  void didChangeDependencies() {
    homeBlocNews = BlocProvider.of<HomeBlocNews>(context);
    homeBlocNews.state.whenOrNull(
      newsError: (error) => homeBlocNews..add(const HomeNewsEvent.unfilteredNews())
    );
    _news = getStoredNewsList();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: NAAppBar(
        showSearchButton: true,
        appBarTitle: tr("navigation.home_tab"),
      ),
        body: RefreshIndicator(
          color: NAColors.blue,
          onRefresh: () async {
            return homeBlocNews.add(const HomeNewsEvent.unfilteredNews());
          },
          child: _buildBody(context, theme),
        )
      );
  }

  @swidget
  _buildBody(BuildContext context, ThemeData theme) {
    return BlocListener<HomeBlocNews, HomeNewsState>(
      listener: (context, state) {
        state.whenOrNull(
            resetList: () {
                _news = [];
                saveToPageStorage(_news);
            },
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0, right: 20.0),
        child: Column(
          children: <Widget>[
            _buildTopRow(context, theme),
            _buildSecondTopRow(),
            BlocBuilder<HomeBlocNews, HomeNewsState> (
              builder: (context, state) {
                return state.maybeWhen(
                  loadingNews: () {
                    if(_news.isEmpty) {
                      return progressIndicator();
                    }
                    return NewsListView(
                          news: _news,
                          isTheEndOfList: _isTheEndOfList,
                          blocType: HomeBlocNews,
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
                          blocType: HomeBlocNews,
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
                        blocType: HomeBlocNews,
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }

  void _saveHomeNewsToPageStorage(List<NewsItem> news, bool isTheEndOfList) {
      _news.addAll(news);
      _isTheEndOfList = isTheEndOfList;
    saveToPageStorage(_news);
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
              _convertCurrentTime(),
              style: theme.textTheme.bodyText1?.copyWith(
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
            return Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: SizedBox(
                width: 20,
                height: 20,
                child: progressIndicator(width: 3.0)
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
                        color: isDarkMode(context) ? NAColors.white : NAColors.black,
                        fontSize: 17
                      ),
                    ),
                    NANetworkImage(
                        imageUrl: Endpoints().getIconUrl(currentDay.icon),
                        isCovered: false,
                        width: 50,
                        height: 50,
                    )
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

  String _convertCurrentTime() {
    String convTime = DateFormat("EEEE, MMMM dd").format(DateTime.now());
    return convTime;
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
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          OrderByMenu(),
          DateSelector(),
        ],
      ),
    );
  }
}

