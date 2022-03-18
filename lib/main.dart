import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/api_manager.dart';
import 'package:newsapp/ui/home/screens/home_screen.dart';
import 'package:newsapp/ui/home_tab_navigator/cubit/tab_cubit.dart';
import 'package:newsapp/ui/home_tab_navigator/screen/home_tab_navigator.dart';
import 'package:newsapp/ui/remote_config/bloc/remote_config_bloc.dart';

import 'app/routing/pages.dart';
import 'app/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await checkLocationServices();
  final startUpBlocs = await createStartUpBlocs();
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
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if(state == AppLifecycleState.resumed) {
      await checkLocationServices();
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


