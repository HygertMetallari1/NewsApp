import 'package:flutter/material.dart';
import 'package:newsapp/app/news_app_assets.dart';
import 'package:newsapp/app/shared_widgets/touchable_opacity.dart';
import 'package:newsapp/app/theme.dart';

class NAAppBar extends StatelessWidget implements PreferredSize{
  final String appBarTitle;
  const NAAppBar({Key? key, required this.appBarTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return AppBar(
      elevation: 1,
      leading: TouchableOpacity(
        onPressed: () {},
        child: NewsAppAssets.search,
      ),
      title: Text(appBarTitle),
      titleTextStyle: theme.textTheme.headline6?.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 24,
        letterSpacing: 1
      ),
      shadowColor: NAColors.gray,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget get child => throw UnimplementedError();
}
