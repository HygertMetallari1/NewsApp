import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:newsapp/app/shared_widgets/na_app_bar.dart';
import 'package:newsapp/ui/sections/screens/culture_tab.dart';
import 'package:newsapp/ui/sections/screens/lifestyle_tab.dart';
import 'package:newsapp/ui/sections/screens/news_tab.dart';
import 'package:newsapp/ui/sections/screens/sport_tab.dart';

class SectionsScreen extends StatefulWidget {
  const SectionsScreen({Key? key = const PageStorageKey('newsSections')}) : super(key: key);

  @override
  _SectionsScreenState createState() => _SectionsScreenState();
}

class _SectionsScreenState extends State<SectionsScreen> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: NAAppBar(
          showSearchButton: false,
          appBarTitle: tr("navigation.headlines_tab"),
          appBarHeight: 100,
          tabBar: TabBar(
            tabs: <Widget>[
              Tab(
                child: _buildTabLabel(
                    context,
                    theme,
                    tr("sections_tabs.news"),
                ),
              ),
              Tab(
                child: _buildTabLabel(
                  context,
                  theme,
                  tr("sections_tabs.sport"),
                ),
              ),
              Tab(
                child: _buildTabLabel(
                  context,
                  theme,
                  tr("sections_tabs.lifestyle"),
                ),
              ),
              Tab(
                child: _buildTabLabel(
                  context,
                  theme,
                  tr("sections_tabs.culture"),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            NewsTab(),
            SportTab(),
            LifestyleTab(),
            CultureTab(),
          ],
        ),
      ),
    );
  }


  @swidget
  _buildTabLabel(BuildContext context, ThemeData theme, String label) {
    return Text(
      label,
      style: theme.textTheme.bodyText2?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
