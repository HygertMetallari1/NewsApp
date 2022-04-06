import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/app/shared_widgets/na_news_detail.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/app/utils.dart';

class NewsItemUi extends StatefulWidget {
  final String headline;
  final String trailText;
  final String publishDate;
  final String? author;
  final String content;
  final String? thumbnail;

  const NewsItemUi({
    Key? key,
    required this.headline,
    required this.trailText,
    required this.publishDate,
    required this.author,
    required this.content,
    required this.thumbnail,
  }) : super(key: key);

  @override
  _NewsItemUiState createState() => _NewsItemUiState();
}

class _NewsItemUiState extends State<NewsItemUi> {

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewsDetail(
              headline: widget.headline,
              trailText: widget.trailText,
              publishDate: widget.publishDate,
              author: widget.author,
              content: widget.content,
              thumbnail: widget.thumbnail,
          )),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    if(widget.thumbnail != null)... [
                      Image.network(
                        widget.thumbnail!,
                        fit: BoxFit.cover,
                      ),
                    ] else ...[
                      const SizedBox()
                    ],
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          widget.headline,
                          style: theme.textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              if(widget.author != null) ... [
                                Expanded(
                                  child: Text(
                                    "Author: " + widget.author!,
                                    style: theme.textTheme.caption?.copyWith(
                                      color: isDarkMode ? NAColors.gray  :NAColors.black.withOpacity(0.6),
                                      fontSize: 11,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ],
                              Text(
                                widget.publishDate,
                                style: theme.textTheme.caption?.copyWith(
                                  color: isDarkMode ? NAColors.gray  :NAColors.black.withOpacity(0.6),
                                  fontSize: 11,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

