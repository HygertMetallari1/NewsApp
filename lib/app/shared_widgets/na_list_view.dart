import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/app/news_app_assets.dart';
import 'package:newsapp/app/shared_widgets/na_news_item.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/data/models/news/news.dart';
import 'package:newsapp/ui/home/bloc/home_news_bloc/home_news_bloc.dart';

class NewsListView extends StatefulWidget {
  final List<NewsItem> news;
  final bool? isTheEndOfTheList;
  final Type blocType;
  const NewsListView({Key? key,
    required this.news,
    required this.blocType,
    this.isTheEndOfTheList
  }) : super(key: key);

  @override
  _NewsListViewState createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> with WidgetsBindingObserver{
  late ScrollController scrollController = ScrollController();
  late var bloc;
  bool showBackToTopButton = false;

  void  loadNextPage() {
    if(widget.blocType == HomeBlocNews) {
      setState(() {
        bloc = HomeBlocNews();
        bloc =  BlocProvider.of<HomeBlocNews>(context)..add(const HomeNewsEvent.loadNextPage());
      });
    }
  }

  bool isScrollAtBottom() {
    if (scrollController.position.maxScrollExtent
        == scrollController.offset && widget.isTheEndOfTheList == null) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void didChangeDependencies() {
    scrollController.addListener(() {
      if (isScrollAtBottom()) {
        loadNextPage();
      }
    });
    super.didChangeDependencies();
  }

  void scrollToTop() {
    scrollController.animateTo(0,
        duration: const Duration(microseconds: 1), curve: Curves.linear);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
            NotificationListener(
            onNotification: (notification) {
              if(notification is ScrollStartNotification) {
                WidgetsBinding.instance
                    ?.addPostFrameCallback((_) => setState(() {
                      showBackToTopButton = true;
                }));
              }
              if(notification is ScrollEndNotification){
                Future.delayed(const Duration(seconds: 5), () {
                  if(mounted) {
                    setState(() {
                      showBackToTopButton = false;
                    });
                  }
                });
              }
              return false;
            },
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: widget.news.length,
                itemBuilder: (context, index) {
                  return Column(
                      children: [
                        NewsItemUi(
                            headline: widget.news[index].headline,
                            trailText: widget.news[index].trailText,
                            publishDate: widget.news[index].publishDate,
                            author:  widget.news[index].author,
                            content:  widget.news[index].content,
                            thumbnail:  widget.news[index].thumbnail
                        ),
                        const Divider(
                          color: NAColors.gray,
                        ),
                        if(index == widget.news.length - 1)... [
                          if(widget.isTheEndOfTheList == null)... [
                            const CircularProgressIndicator(
                              color: NAColors.blue,
                            )
                          ]
                        ]
                      ]
                  );
                }
            ),
          ),
          Visibility(
            visible: showBackToTopButton,
            child: FloatingActionButton(
              backgroundColor: NAColors.gray.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              onPressed: () => scrollToTop(),
              child: NewsAppAssets.upArrow,
            ),
          )
        ]
      ),
    );
  }
}
