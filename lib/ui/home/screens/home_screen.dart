import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:newsapp/app/shared_widgets/na_app_bar.dart';
import 'package:newsapp/app/shared_widgets/touchable_opacity.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/endpoints.dart';
import 'package:newsapp/data/models/weather/weather.dart';
import 'package:newsapp/ui/home/bloc/weather_bloc/weather_bloc.dart';
import 'package:newsapp/ui/home/screens/weather_bottom_sheet.dart';
import 'package:newsapp/ui/home/widgets/filters/date_selector.dart';
import 'package:newsapp/ui/home/widgets/filters/order_by_pop_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: NAAppBar(
        showSearchButton: true,
        appBarTitle: tr("navigation.home_tab"),
      ),
      body: _buildBody(context, theme),
    );
  }

  @swidget
  _buildBody(BuildContext context, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 20.0, right: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildTopRow(context, theme),
            _buildSecondTopRow()
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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const <Widget>[
          OrderByMenu(),
          DateSelector(),
        ],
      ),
    );
  }
}
