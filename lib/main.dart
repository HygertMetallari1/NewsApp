import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/ui/home/screens/home_screen.dart';
import 'package:newsapp/ui/home_tab_navigator/cubit/tab_cubit.dart';
import 'package:newsapp/ui/home_tab_navigator/screen/home_tab_navigator.dart';

import 'app/routing/pages.dart';
import 'app/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
        supportedLocales: const [
          Locale('en'),
        ],
        saveLocale: false,
        path: 'assets/app_texts'
            '',
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => TabCubit())
          ], child: const NewsApp(),
        ),
      )
  );
}

class NewsApp extends StatefulWidget {

  const NewsApp({Key? key}) : super(key: key);

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> with WidgetsBindingObserver{

  @override
  void initState() {
    WidgetsBinding.instance?.addObserver(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routes: pages,
      theme: naTheme,
      home: const HomeTabNavigator(),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }
}


