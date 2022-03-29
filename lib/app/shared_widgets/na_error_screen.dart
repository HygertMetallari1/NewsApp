import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/app/shared_widgets/touchable_opacity.dart';
import 'package:newsapp/app/theme.dart';

class NAErrorScreen extends StatelessWidget {
  final String errorMessage;
  const NAErrorScreen({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
            "assets/images/error.png",
            height: 200,
            width: 100,
        ),
        Text(
          errorMessage,
          style: theme.textTheme.bodyText2?.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 20
          ),
        ),
      ],
    );
  }
}
