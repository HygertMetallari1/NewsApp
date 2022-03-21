import 'package:flutter/material.dart';
import 'package:newsapp/app/news_app_assets.dart';
import 'package:newsapp/app/shared_widgets/na_error_screen.dart';
import 'package:newsapp/app/shared_widgets/touchable_opacity.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/data/services/news_service/search_news_service.dart';
import 'package:newsapp/data/services/weather_service/weather_service.dart';

class NAAppBar extends StatelessWidget implements PreferredSize{
  final String appBarTitle;
  const NAAppBar({Key? key, required this.appBarTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
          color: NAColors.white,
          border: Border(
              bottom: BorderSide(
                  color: NAColors.gray
              )
          )
      ),
      child: AppBar(
        elevation: 0,
        leading: TouchableOpacity(
          onPressed: () {
            SearchNewsService().getNews(currentPage: 2);
           /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context)
              => NAErrorScreen(
                errorMessage: "Great",
                firstButtonCallBack: () =>  function1(),
                secondButtonCallBack: () => function2(),
              )
              ),
            );*/
          },
          child: NewsAppAssets.search,
        ),
        title: Text(appBarTitle),
        titleTextStyle: theme.textTheme.headline6?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 24,
          letterSpacing: 1
        ),
        shadowColor: NAColors.gray,
      ),
    );
  }
  //int function1(){ return 0;}
  //int function2(){return 0;}

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget get child => throw UnimplementedError();
}
