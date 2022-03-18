import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:newsapp/app/shared_widgets/na_app_bar.dart';
import 'package:newsapp/app/shared_widgets/touchable_opacity.dart';
import 'package:newsapp/app/utils.dart';

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
    return SingleChildScrollView(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          _buildTopRow(context, theme)
        ],
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
                  fontSize: 11
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @swidget
  _buildWeatherButton(BuildContext context, ThemeData theme) {
  }
}
