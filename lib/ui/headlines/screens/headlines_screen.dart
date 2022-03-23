import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/app/shared_widgets/na_app_bar.dart';

class HeadlinesScreen extends StatefulWidget {
  const HeadlinesScreen({Key? key}) : super(key: key);

  @override
  _HeadlinesScreenState createState() => _HeadlinesScreenState();
}

class _HeadlinesScreenState extends State<HeadlinesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NAAppBar(
        showSearchButton: false,
        appBarTitle: tr("navigation.headlines_tab"),
      ),
    );
  }
}
