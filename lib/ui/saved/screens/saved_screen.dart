import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:newsapp/app/shared_widgets/na_app_bar.dart';
import 'package:newsapp/app/shared_widgets/na_error_screen.dart';
import 'package:newsapp/app/shared_widgets/na_list_view.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/ui/saved/bloc/saved_news_bloc.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  _SavedScreenState createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  SavedNewsBloc savedNewsBloc = SavedNewsBloc();

  @override
  void didChangeDependencies() {
     savedNewsBloc = BlocProvider.of<SavedNewsBloc>(context);
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NAAppBar(
        showSearchButton: false,
        appBarTitle: tr("navigation.saved_tab"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SizedBox(
                width: double.maxFinite,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BlocBuilder<SavedNewsBloc, SavedNewsState> (
                      builder: (context, state) {
                        return state.maybeWhen(
                          loadingSavedNews: () {
                            return _buildIndicator(
                                context,
                                progressIndicator(),
                            );
                          },
                          loadedSavedNews: (news) {
                            if(news.isNotEmpty) {
                              return NewsListView(news: news, blocType: SavedNewsBloc, isTheEndOfList: true);
                            }
                            return _buildIndicator(
                                context,
                                NAErrorScreen(errorMessage: tr("errors.empty_saved_list"),
                              ),
                            );
                          },
                          savedNewsError: (error) {
                            return _buildIndicator(
                                context,
                                NAErrorScreen(errorMessage: error),
                            );
                          },
                            orElse: () => const SizedBox(),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @swidget
  _buildIndicator(BuildContext context, Widget indicator) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 5),
      child: indicator,
    );
  }
}
