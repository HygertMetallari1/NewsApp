import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:newsapp/app/shared_widgets/na_app_bar.dart';
import 'package:newsapp/app/shared_widgets/touchable_opacity.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/ui/helper_mixin.dart';
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

class _SectionsScreenState extends State<SectionsScreen> with TickerProviderStateMixin{
  late final TabController _tabController;
  int initialIndex = 0;
  static List<String> sectionLabels = <String>[
    tr("sections_tabs.news"),
    tr("sections_tabs.sport"),
    tr("sections_tabs.lifestyle"),
    tr("sections_tabs.culture"),
  ];

  void _getStoredTabIndex() {
    final tabIndex =  PageStorage.of(context)!.readState(context, identifier: widget.key);
    if(tabIndex != null) {
      setState(() {
        initialIndex = tabIndex;
      });
    }
  }

  void _saveTabIndex(int index) {
    PageStorage.of(context)!
        .writeState(context, index, identifier: widget.key);
  }

  void _tabListener() {
    _saveTabIndex(_tabController.index);
  }

  @override
  void initState() {
    _getStoredTabIndex();
    _tabController = TabController(length: sectionLabels.length, initialIndex: initialIndex, vsync: this);
    _tabController.addListener(() {
      _tabListener();
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: NAAppBar(
        showSearchButton: false,
        appBarTitle: tr("navigation.headlines_tab"),
        appBarHeight: 100,
        tabBar: TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: NAColors.blue,
          tabs: <Widget>[..._buildTabs(context, theme)],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          NewsTab(),
          SportTab(),
          LifestyleTab(),
          CultureTab(),
        ],
      ),
    );
  }

  @swidget
  _buildTabs(BuildContext context, ThemeData theme) {
    return List.generate(
      sectionLabels.length,
      (index) => Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Row(
          children: [
            Text(
              sectionLabels[index],
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyText2?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
