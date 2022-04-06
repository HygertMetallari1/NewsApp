import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/api_manager.dart';
import 'package:newsapp/ui/home/bloc/home_news_bloc/home_news_bloc.dart';
import 'package:newsapp/ui/home/bloc/weather_bloc/weather_bloc.dart';
import 'package:newsapp/ui/home_tab_navigator/cubit/tab_cubit.dart';
import 'package:newsapp/ui/home_tab_navigator/screen/home_tab_navigator.dart';
import 'package:newsapp/ui/remote_config/bloc/remote_config_bloc.dart';
import 'package:newsapp/ui/sections/blocs/lifestyle_tab_bloc/lifestyle_tab_bloc.dart';
import 'package:newsapp/ui/sections/blocs/news_tab_bloc/news_tab_bloc.dart';
import 'package:newsapp/ui/sections/blocs/sport_tab_bloc/sport_tab_bloc.dart';

import 'app/routing/pages.dart';
import 'app/theme.dart';
import 'ui/sections/blocs/culture_tab_bloc/culture_tab_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  late final _StartupBlocs startUpBlocs;
  await checkLocationServices();
  startUpBlocs = await createStartUpBlocs();
 return runApp(
      EasyLocalization(
        supportedLocales: const [
          Locale('en'),
        ],

        saveLocale: false,
        path: 'assets/app_texts',
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => startUpBlocs.remoteConfigBloc),
            BlocProvider(create: (_) => HomeBlocNews()..add(const HomeNewsEvent.unfilteredNews())),
            BlocProvider(create: (_) => WeatherBloc()..add(const WeatherEvent.appStarted())),
            BlocProvider(create: (_) => NewsTabBloc()..add(const NewsTabEvent.loadNews())),
            BlocProvider(create: (_) => SportTabBloc()..add(const SportTabEvent.loadNews())),
            BlocProvider(create: (_) => LifestyleTabBloc()..add(const LifestyleTabEvent.loadNews())),
            BlocProvider(create: (_) => CultureTabBloc()..add(const CultureTabEvent.loadNews())),
            BlocProvider(create: (_) => startUpBlocs.tabCubit)
          ], child: const NewsApp(),
        ),
      )
  );
}

Future<_StartupBlocs> createStartUpBlocs() async {
  final blocs = _StartupBlocs();
  final naRemoteConfig = await blocs.remoteConfigBloc.waitForRemoteConfig();
  APIManager.shared.configDio();
  await APIManager.shared.setupWithConfig(naRemoteConfig);
  return blocs;
}
class NewsApp extends StatefulWidget {

  const NewsApp({Key? key}) : super(key: key);

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> with WidgetsBindingObserver{
  bool appShown = true;

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
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.system,
      home: const HomeTabNavigator(),
      debugShowCheckedModeBanner: false,
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if(state == AppLifecycleState.paused || state == AppLifecycleState.detached) {
      setState(() {
        appShown = false;
      });
    }
    if(state == AppLifecycleState.resumed) {
      if(appShown == false) {
        setState(() {
          appShown = true;
        });
        await checkLocationServices();
        BlocProvider.of<WeatherBloc>(context).add(const WeatherEvent.appStarted());
      }
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }
}

class _StartupBlocs {
  late final RemoteConfigBloc remoteConfigBloc;
  late final TabCubit tabCubit;
  _StartupBlocs() {
    remoteConfigBloc = RemoteConfigBloc()..add(const RemoteConfigEvent.getValues());
    tabCubit = TabCubit();
  }
}


