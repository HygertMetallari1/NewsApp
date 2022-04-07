import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:newsapp/app/news_app_assets.dart';
import 'package:newsapp/app/routing/routes.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/ui/sections/screens/sections_screen.dart';
import 'package:newsapp/ui/home/screens/home_screen.dart';
import 'package:newsapp/ui/home_tab_navigator/cubit/tab_cubit.dart';
import 'package:newsapp/ui/saved/screens/saved_screen.dart';

class HomeTabNavigator extends StatefulWidget {
  const HomeTabNavigator({Key? key}) : super(key: key);

  @override
  _HomeTabNavigatorState createState() => _HomeTabNavigatorState();
}

class _HomeTabNavigatorState extends State<HomeTabNavigator> {
  final PageStorageBucket _bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return PageStorage(
      bucket: _bucket,
      child: Scaffold(
        body: BlocBuilder<TabCubit, TabState>(
          builder: (context, state) {
            switch(state.selectedTab) {
              case "/home": {
                return const HomeScreen();
              }
              case "/sections": {
                return const SectionsScreen();
              }
              case "/saved": {
                return const SavedScreen();
              }
            }
            return const HomeScreen();
          },
        ),
        bottomNavigationBar: _buildBottomNavigationBar(context, theme),
      ),
    );
  }

  @swidget
  _buildBottomNavigationBar(BuildContext context, ThemeData theme) {

    TabCubit _tabCubit = BlocProvider.of<TabCubit>(context);
    return BlocBuilder<TabCubit, TabState>(
      builder: (context, state) {
        return Container(
          decoration: const BoxDecoration(
            color: NAColors.white,
            border: Border(
              top: BorderSide(
                color: NAColors.gray
              )
            )
          ),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _tabCubit.selectedIndex,
              iconSize: 24,
              items: <BottomNavigationBarItem> [
                 BottomNavigationBarItem(
                   icon: NewsAppAssets.home,
                   label: tr("navigation.home_tab"),
                   activeIcon: NewsAppAssets.selectedHome
                 ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/sections.png",
                    width: 25,
                    height: 25,
                    color: isDarkMode(context) ? NAColors.white70 : NAColors.black,
                  ),
                  label: tr("navigation.headlines_tab"),
                  activeIcon: NewsAppAssets.selectedSection
                ),
                BottomNavigationBarItem(
                  icon: NewsAppAssets.saved,
                  label: tr("navigation.saved_tab"),
                  activeIcon: NewsAppAssets.selectedSaved
                ),
              ],
              onTap: (index) => _tabCubit.setSelectedTabIndex(index),
          ),
        );
      },
    );
  }
}
