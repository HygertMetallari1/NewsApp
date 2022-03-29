import 'package:flutter/material.dart';
import 'package:newsapp/app/news_app_assets.dart';
import 'package:newsapp/app/shared_widgets/touchable_opacity.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/ui/home/widgets/filters/search_screen.dart';

class NAAppBar extends StatelessWidget implements PreferredSize{
  final String appBarTitle;
  final bool showSearchButton;
  const NAAppBar({Key? key, required this.appBarTitle, required this.showSearchButton}) : super(key: key);

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
        leading: showSearchButton ? TouchableOpacity(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const SearchScreen();
                }
            );
          },
          child: NewsAppAssets.search,
        ) : const SizedBox(),
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

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget get child => throw UnimplementedError();
}
