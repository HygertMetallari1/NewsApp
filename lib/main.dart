import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/theme.dart';

void main() async {

  EasyLocalization(
      child: MultiBlocProvider(
        providers: [

        ], child: NewsApp(),
      ),
      supportedLocales: const [
        Locale('en'),
      ],
      path: 'assets/app_texts',
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
      theme: naTheme,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }
}

