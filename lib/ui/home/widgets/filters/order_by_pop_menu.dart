import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          });
          FiltersData().setOrderByFilter(selected.toString());
          BlocProvider.of<HomeBlocNews>(context).add(
              HomeNewsEvent.orderBy(
                  orderBy: selected.toString()
              )
          );
        },
        initialValue: selectedItem,
        child: Container(
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
              Expanded(
                child: Text(
                  selectedItem,
                  style: theme.textTheme.bodyText2!,
                ),
              ),
              Icon(
                Icons.sort,
                size: 20,
                color: NAColors.black.withOpacity(0.5),
              ),
            ],
          ),
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
