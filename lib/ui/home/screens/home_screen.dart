import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:newsapp/app/shared_widgets/na_app_bar.dart';
import 'package:newsapp/app/shared_widgets/touchable_opacity.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/enpoints.dart';
import 'package:newsapp/data/models/weather/weather.dart';
import 'package:newsapp/ui/home/bloc/weather_bloc/weather_bloc.dart';
import 'package:newsapp/ui/home/screens/weather_bottom_sheet.dart';

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
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            _buildTopRow(context, theme)
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                tr("home.your_briefings"),
                maxLines: 2,
                style: theme.textTheme.headline4?.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.1,
                  fontSize: 27,
                ),
              ),
              Text(
                convertCurrentTime(),
                style: theme.textTheme.caption?.copyWith(
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.1,
                  fontSize: 13
                ),
              )
            ],
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
          weatherLoaded: (forecastingList) {
            WeatherItem currentDay = forecastingList[0];
            return OutlinedButton(
                clipBehavior: Clip.hardEdge,
                style: ButtonStyle (
                  shape: MaterialStateProperty
                      .all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))
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
                weatherError,
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
}
