import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:newsapp/app/shared_widgets/na_app_bar.dart';
import 'package:newsapp/ui/sections/screens/culture_tab.dart';
import 'package:newsapp/ui/sections/screens/lifestyle_tab.dart';
import 'package:newsapp/ui/sections/screens/news_tab.dart';
import 'package:newsapp/ui/sections/screens/sport_tab.dart';

class SectionsScreen extends StatefulWidget {
  const SectionsScreen({Key? key = const PageStorageKey('newsSections')})
      : super(key: key);

  @override
  _SectionsScreenState createState() => _SectionsScreenState();
}

class _SectionsScreenState extends State<SectionsScreen> {
  static List<String> sectionLabels = <String>[
    tr("sections_tabs.news"),
    tr("sections_tabs.sport"),
    tr("sections_tabs.lifestyle"),
    tr("sections_tabs.culture"),
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return DefaultTabController(
      length: sectionLabels.length,
      child: Scaffold(
        appBar: NAAppBar(
          showSearchButton: false,
          appBarTitle: tr("navigation.headlines_tab"),
          appBarHeight: 100,
          tabBar: TabBar(
            tabs: <Widget>[..._buildTabs(context, theme)],
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
  _buildTabs(BuildContext context, ThemeData theme) {
    return List.generate(
      sectionLabels.length,
      (index) => Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                sectionLabels[index],
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyText2?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
