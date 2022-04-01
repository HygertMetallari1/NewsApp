import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NAErrorScreen extends StatefulWidget {
  final String errorMessage;
  const NAErrorScreen({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);

  @override
  State<NAErrorScreen> createState() => _NAErrorScreenState();
}

class _NAErrorScreenState extends State<NAErrorScreen> {
  final String  internetError = tr("errors.internet_error");
  final String emptyList = tr("errors.empty_list");
  late String path;

  @override
  void initState() {
     if(widget.errorMessage == internetError) {
       path = "assets/images/no-internet.png";
     }
     if(widget.errorMessage == emptyList){
       path = "assets/images/empty_list.png";
     }
     else {
       path = "assets/images/error.png";
     }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
              path,
              height: 100,
              width: 100,
              filterQuality: FilterQuality.low,
              fit: BoxFit.fill,
          ),
          Text(
            widget.errorMessage,
            style: theme.textTheme.bodyText2?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 20
            ),
          ),
        ],
      ),
    );
  }
}
