import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/app/news_app_assets.dart';
import 'package:newsapp/app/shared_widgets/na_news_item.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/data/models/news/news.dart';
import 'package:newsapp/ui/home/bloc/home_news_bloc/home_news_bloc.dart';
import 'package:newsapp/ui/saved/bloc/saved_news_bloc.dart';
import 'package:newsapp/ui/sections/blocs/culture_tab_bloc/culture_tab_bloc.dart';
import 'package:newsapp/ui/sections/blocs/lifestyle_tab_bloc/lifestyle_tab_bloc.dart';
import 'package:newsapp/ui/sections/blocs/news_tab_bloc/news_tab_bloc.dart';
import 'package:newsapp/ui/sections/blocs/sport_tab_bloc/sport_tab_bloc.dart';

class NewsListView extends StatefulWidget {
  final List<NewsItem> news;
  final bool isTheEndOfList;
  final Type blocType;
  const NewsListView({Key? key,
    required this.news,
    required this.blocType,
    required this.isTheEndOfList
  }) : super(key: key);

  @override
  _NewsListViewState createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView>{
  ScrollController scrollController = ScrollController();
  late Bloc bloc;
  bool showBackToTopButton = false;
  bool isFirstTimeAdding = false;

  void  loadNextPage() {
    if(widget.blocType == HomeBlocNews) {
      setState(() {
        bloc = HomeBlocNews();
        bloc =  BlocProvider.of<HomeBlocNews>(context)..add(const HomeNewsEvent.loadNextPage());
      });
    }
    if(widget.blocType == NewsTabBloc) {
      setState(() {
        bloc = NewsTabBloc();
        bloc = BlocProvider.of<NewsTabBloc>(context)..add(const NewsTabEvent.loadNextPage());
      });
    }
    if(widget.blocType == SportTabBloc) {
      setState(() {
        bloc = SportTabBloc();
        bloc = BlocProvider.of<SportTabBloc>(context)..add(const SportTabEvent.loadNextPage());
      });
    }
    if(widget.blocType == LifestyleTabBloc) {
      setState(() {
        bloc = LifestyleTabBloc();
        bloc = BlocProvider.of<LifestyleTabBloc>(context)..add(const LifestyleTabEvent.loadNextPage());
      });
    }
    if(widget.blocType == CultureTabBloc) {
      setState(() {
        bloc = CultureTabBloc();
        bloc = BlocProvider.of<CultureTabBloc>(context)..add(const CultureTabEvent.loadNextPage());
      });
    }
  }

  bool isScrollAtBottom() {
    if (scrollController.position.maxScrollExtent
        == scrollController.offset && widget.isTheEndOfList == false) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void initState() {
    setState(() {
     isFirstTimeAdding = widget.news.length <= 10;
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    scrollController.addListener(() {
      _scrollControllerListener();
    });
    super.didChangeDependencies();
  }

  void _scrollControllerListener() {
    if (isScrollAtBottom()) {
      loadNextPage();
    }
    //To override the saved list position and automatically scroll the list to the top
    //whenever there is a new list loaded
    if(isFirstTimeAdding)  {
      scrollController.jumpTo(0);
      setState(() {
        isFirstTimeAdding = false;
      });
    }
  }

  void scrollToTop() {
    scrollController.animateTo(0,
        duration: const Duration(milliseconds: 20), curve: Curves.linear);
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
        children: [
            NotificationListener(
            onNotification: (notification) {
              if(notification is ScrollNotification) {
                if(mounted) {
                  setState(() {
                    showBackToTopButton = true;
                  });
                }
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
                          if(widget.isTheEndOfList == false)... [
                            progressIndicator()
                          ]
                        ]
                      ]
                  );
                }
            ),
          ),
          Positioned(
            bottom: kBottomNavigationBarHeight,
            right: 0,
            child: Visibility(
              visible: showBackToTopButton,
              child: FloatingActionButton(
                backgroundColor: NAColors.gray.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: () => scrollToTop(),
                child: NewsAppAssets.upArrow,
              ),
            ),
          )
        ]
      ),
    );
  }
}
