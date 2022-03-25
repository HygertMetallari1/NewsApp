
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:newsapp/app/shared_widgets/touchable_opacity.dart';
import 'package:newsapp/app/theme.dart';
import 'package:newsapp/app/utils.dart';
import 'package:newsapp/ui/home/widgets/filters/filters_data.dart';

enum TimeType{
  fromDate,
  toDate
}

class DateSelector extends StatefulWidget {
  const DateSelector({Key? key}) : super(key: key);

  @override
  _DateSelectorState createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  bool isFdEmpty = FiltersData().fromDate == null;
  bool isTdEmpty = FiltersData().toDate == null;
  DateTime now = DateTime.now();

  late String datePickerChipLabel;

  @override
  void initState() {
      if(isFdEmpty != true && isTdEmpty != true) {
        datePickerChipLabel =  FiltersData().fromDate! + " / " + FiltersData().toDate!;
      } else {
        datePickerChipLabel = tr("date_selector.select_date");
      }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: <Widget>[
        _buildSelectorChip(context, theme, datePickerChipLabel),
      ],
    );
  }

  @swidget
  _buildSelectorChip(BuildContext context, ThemeData theme, String label) {
    return TouchableOpacity(
      onPressed: () async {
        await showDateRangePicker(
          context: context,
          firstDate:DateTime(2010),
          lastDate: now,
          builder: (context, child) {
            return Theme(
              data: ThemeData.light().copyWith(
                colorScheme: const ColorScheme.dark(
                  primary: NAColors.blue,
                  onPrimary: NAColors.white,
                  surface: NAColors.blue,
                  onSurface: NAColors.black,
                ),
               dialogBackgroundColor: NAColors.white,
              ),
              child: child!,
            );
          },
        ).then((selectedRange) {
          if(selectedRange != null) {
            var fromDate = convertQueryTime(selectedRange.start);
            var toDate = convertQueryTime(selectedRange.end);
            FiltersData().setFromDate(fromDate);
            FiltersData().setToDate(toDate);
            setState(() {
              datePickerChipLabel = fromDate + " / " + toDate;
            });
          }
        });
      },
      child: Chip(
          label: Text(
            label,
            style: theme.textTheme.bodyText2,
          ),
          backgroundColor: NAColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          side: BorderSide(
            color: NAColors.black.withOpacity(0.1)
          )
      ),
    );
  }

}
