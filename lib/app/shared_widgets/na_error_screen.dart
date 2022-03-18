import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NAErrorScreen extends StatelessWidget {
  final String errorMessage;
  final Function() firstButtonCallBack;
  final Function() secondButtonCallBack;
  const NAErrorScreen({
    Key? key,
    required this.errorMessage,
    required this.firstButtonCallBack,
    required this.secondButtonCallBack
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          tr("errors.request_failed"),
          style: theme.textTheme.bodyText1?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/error.png"),
                  Expanded(
                    child: Text(
                      errorMessage,
                      style: theme.textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
