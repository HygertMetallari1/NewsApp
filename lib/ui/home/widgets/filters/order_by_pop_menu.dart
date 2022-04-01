import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/app/shared_widgets/touchable_opacity.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/ui/home/bloc/home_news_bloc/home_news_bloc.dart';
import 'package:newsapp/ui/home/widgets/filters/filters_data.dart';

class OrderByMenu extends StatefulWidget {
  const OrderByMenu({Key? key}) : super(key: key);

  @override
  _OrderByMenuState createState() => _OrderByMenuState();
}

class _OrderByMenuState extends State<OrderByMenu> {
  late String selectedItem;
  bool removeButton = false;

  @override
  void initState() {
    if(FiltersData().orderBy != null) {
      selectedItem = FiltersData().orderBy!;
    } else {
      selectedItem = tr("pop_menu.order_by");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return PopupMenuButton(
        padding: const EdgeInsets.only(top: 8.0),
        offset: const Offset(0, kToolbarHeight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onSelected: (selected) {
          setState(() {
            selectedItem = selected.toString();
            removeButton = true;
          });
          FiltersData().setOrderByFilter(selected.toString());
          BlocProvider.of<HomeBlocNews>(context).add(
              HomeNewsEvent.orderBy(
                  orderBy: selected.toString()
              )
          );
        },
        initialValue: selectedItem,
        child: Row(
          children: [
            Container(
              constraints: const BoxConstraints(
                  maxHeight: 45,
                  maxWidth: 120
              ),
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                      color: NAColors.gray.withOpacity(0.5)
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedItem,
                    style: theme.textTheme.bodyText2!,
                  ),
                  Icon(
                    Icons.sort,
                    size: 20,
                    color: NAColors.black.withOpacity(0.5),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: removeButton,
              child: TouchableOpacity(
                onPressed: () {
                  FiltersData().setOrderByFilter(null);
                  setState(() {
                    selectedItem = tr("pop_menu.order_by");
                    removeButton = false;
                  });
                  BlocProvider.of<HomeBlocNews>(context).add(
                     const  HomeNewsEvent.orderBy(
                          orderBy: null
                      )
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Image.asset(
                    "assets/images/cross.png",
                    width: 24,
                    height: 24,
                    color: NAColors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        itemBuilder: (context) => <PopupMenuItem> [
          PopupMenuItem(
            child: Text(
              tr("pop_menu.relevance"),
              style: theme.textTheme.bodyText1,
            ),
            value:  tr("pop_menu.relevance"),
          ),
          PopupMenuItem(
            child: Text(
              tr("pop_menu.newest"),
              style: theme.textTheme.bodyText1,
            ),
            value: tr("pop_menu.newest"),
          ),
          PopupMenuItem(
            child: Text(
              tr("pop_menu.oldest"),
              style: theme.textTheme.bodyText1,
            ),
            value:  tr("pop_menu.oldest"),
          ),
        ]
    );
  }
}
