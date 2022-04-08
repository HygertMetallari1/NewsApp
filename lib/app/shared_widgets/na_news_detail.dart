
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/app/news_app_assets.dart';
import 'package:newsapp/app/shared_widgets/touchable_opacity.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/models/news/news.dart';
import 'package:newsapp/data/saved_news_db.dart';
import 'package:newsapp/ui/saved/bloc/saved_news_bloc.dart';

class NewsDetail extends StatefulWidget {
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
  State<NewsDetail> createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  late bool isSaved;
  late NewsItem newsItem;

  @override
  void didChangeDependencies() { //To check if the clicked news was saved before
      setState(() {
        newsItem = NewsItem(
            headline: widget.headline,
            trailText: widget.trailText,
            author: widget.author,
            publishDate: widget.publishDate,
            content: widget.content,
            thumbnail: widget.thumbnail
        );
        isSaved = SavedNews().isClickedNewsSaved(newsItem);
      });
    super.didChangeDependencies();
  }

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
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isSaved = !isSaved;
                });
                if(isSaved) {
                  BlocProvider.of<SavedNewsBloc>(context).add(SavedNewsEvent.saveNews(news: newsItem));
                  debugPrint("Save event");
                }
                else {
                  BlocProvider.of<SavedNewsBloc>(context).add(SavedNewsEvent.removeNews(news: newsItem));
                }
              },
              icon: isSaved? NewsAppAssets.selectedSaved : NewsAppAssets.savedOutlined
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: <Widget>[
            if(widget.thumbnail != null)... [
              Image.network(
                  widget.thumbnail!,
                  fit: BoxFit.cover,
                ),
            ] else ...[
              const SizedBox()
            ],
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Text(
                widget.headline,
                style: theme.textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Text(
                widget.trailText,
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
                  if(widget.author != null) ... [
                    Text(
                      "Author: " + widget.author!,
                      style: theme.textTheme.caption?.copyWith(
                        color: isDarkMode(context) ? NAColors.gray : NAColors.black.withOpacity(0.6),
                        fontSize: 11,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                  Text(
                    widget.publishDate,
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
                widget.content,
                style: theme.textTheme.bodyText1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
