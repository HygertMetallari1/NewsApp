import 'package:flutter/material.dart';

class CultureTab extends StatefulWidget {
  const CultureTab({Key? key = const PageStorageKey('cultureTab')}) : super(key: key);

  @override
  _CultureTabState createState() => _CultureTabState();
}

class _CultureTabState extends State<CultureTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Culture, Tab"
      ),
    );
  }
}
