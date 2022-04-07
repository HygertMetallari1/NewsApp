
import 'package:flutter/material.dart';
import 'package:newsapp/app/news_app_assets.dart';
import 'package:newsapp/app/shared_widgets/touchable_opacity.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/app/utils.dart';

class NewsDetail extends StatelessWidget {
  final String headline;
  final String trailText;
  final String publishDate;
  final String? author;
  final String content;
  final String? thumbnail;

  const NewsDetail({
    Key? key,
    required this.headline,
    required this.trailText,
    required this.publishDate,
    required this.author,
    required this.content,
    required this.thumbnail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: TouchableOpacity(
          onPressed: () => Navigator.pop(context),
          child: NewsAppAssets.backArrow,
        ),
        title: const Text("News"),
        titleTextStyle: theme.textTheme.headline6?.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 24,
            letterSpacing: 1
        ),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: <Widget>[
            if(thumbnail != null)... [
              Image.network(
                  thumbnail!,
                  fit: BoxFit.cover,
                ),
            ] else ...[
              const SizedBox()
            ],
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Text(
                headline,
                style: theme.textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Text(
                trailText,
                style: theme.textTheme.bodyText2?.copyWith(
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  if(author != null) ... [
                    Text(
                      "Author: " + author!,
                      style: theme.textTheme.caption?.copyWith(
                        color: isDarkMode(context) ? NAColors.gray : NAColors.black.withOpacity(0.6),
                        fontSize: 11,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                  Text(
                    publishDate,
                    style: theme.textTheme.caption?.copyWith(
                      color: isDarkMode(context) ? NAColors.gray : NAColors.black.withOpacity(0.6),
                      fontSize: 11,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Text(
                content,
                style: theme.textTheme.bodyText1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
