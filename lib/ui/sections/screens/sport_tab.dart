import 'package:flutter/material.dart';

class SportTab extends StatefulWidget {
  const SportTab({Key? key = const PageStorageKey('sportTab')}) : super(key: key);

  @override
  _SportTabState createState() => _SportTabState();
}

class _SportTabState extends State<SportTab> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("News Tab"),
    );
  }
}
