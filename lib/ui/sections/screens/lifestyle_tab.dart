import 'package:flutter/material.dart';

class LifestyleTab extends StatefulWidget {
  const LifestyleTab({Key? key= const PageStorageKey('lifestyleTab')}) : super(key: key);

  @override
  _LifestyleTabState createState() => _LifestyleTabState();
}

class _LifestyleTabState extends State<LifestyleTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Lifestyle tab"),
    );
  }
}
