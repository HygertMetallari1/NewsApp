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
  FocusNode focusNode = FocusNode();
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
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    final border = OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12),
    );
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: MediaQuery.of(context).viewInsets.bottom),
        child: TextFormField(
          focusNode: focusNode,
          controller: searchFieldController,
          autofocus: true,
          onChanged: (value) {
            if(value.isNotEmpty) {
              setState(() {
                isFilled = true;
              });
            } else {
              setState(() {
                isFilled = false;
              });
            }
          },
          onFieldSubmitted: (queryString) {
            _setFilters(queryString).then((_) => {
              if(queryString != "") {
                homeNewsBloc.add(HomeNewsEvent.searchNews(queryField: queryString))
              }
            });
          },
          style: theme.textTheme.bodyText1?.copyWith(
            color: isDarkMode ? NAColors.white :NAColors.black,
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
                      _setFilters(null).then((_) {
                        homeNewsBloc.add(const HomeNewsEvent.searchNews(queryField: null));
                      });
                    },
                     child: NewsAppAssets.remove
                  )
                  : NewsAppAssets.search,
          ),
          cursorColor: NAColors.blue,
        ),
      ),
    );
  }

  Future<void> _setFilters(String? queryString) async {
    focusNode.unfocus();
    Navigator.pop(context);
    FiltersData().setSearchQuery(queryString);
  }
}
