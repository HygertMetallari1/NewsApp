import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/app/news_app_assets.dart';
import 'package:newsapp/app/shared_widgets/touchable_opacity.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/ui/home/bloc/home_news_bloc/home_news_bloc.dart';
import 'package:newsapp/ui/home/widgets/filters/filters_data.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchFieldController = TextEditingController();
  HomeBlocNews homeNewsBloc = HomeBlocNews();
  bool isFilled = false;

  @override
  void didChangeDependencies() {
    homeNewsBloc = BlocProvider.of<HomeBlocNews>(context);
    if(FiltersData().searchQuery != null) {
      searchFieldController = TextEditingController(text: FiltersData().searchQuery!);
      isFilled = true;
    }
    super.didChangeDependencies();
  }
  @override
  void dispose() {
      searchFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final border = OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12),
    );
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: TextFormField(
          controller: searchFieldController,
          autofocus: true,
          onFieldSubmitted: (queryString) {
            FiltersData().setSearchQuery(queryString);
            Navigator.pop(context);
            homeNewsBloc.add(HomeNewsEvent.searchNews(queryField: queryString));
          },
          style: theme.textTheme.bodyText1?.copyWith(
            color: NAColors.black,
            fontSize: 15,
          ),
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            hintText: tr("home.search.search_news"),
            fillColor: NAColors.gray.withOpacity(0.06),
            filled: true,
            enabledBorder: border,
            focusedBorder: border,
            suffixIcon: isFilled
                ? TouchableOpacity(
                  onPressed: () {
                    setState(() {
                      searchFieldController = TextEditingController();
                    });
                    homeNewsBloc.add(const HomeNewsEvent.appStarted());
                    Navigator.pop(context);
                    FiltersData().setSearchQuery(null);
                  },
                   child: NewsAppAssets.delete)
                :TouchableOpacity(
                onPressed: () {
                  FiltersData().setSearchQuery(searchFieldController.text);
                  Navigator.pop(context);
                  homeNewsBloc.add(HomeNewsEvent.searchNews(queryField: searchFieldController.text));
                },
                child: NewsAppAssets.search,
            )
          ),
          cursorColor: NAColors.blue,
        ),
      ),
    );
  }
}
