import 'package:book_tiket/src/config/config.dart';
import 'package:book_tiket/src/features/profile/view/widget/appbar_model.dart';
import 'package:book_tiket/src/shared_componets/button/button_primary.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class SelectDate extends StatelessWidget {
  SelectDate({super.key});
  DateTime? startDate;
  DateTime? endDate;

  @override
  Widget build(BuildContext context) {
    Size size = AppLayout.getSize(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Palette.bgColor,
        appBar: AppBarModel(
          onTapLeadingWidget: () {
            AppNavigator.pop();
          },
          backleading: true,
          childWidegt: Text(
            'Select Date',
            style: AppFont.t.w600.s(20),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(20),
              horizontal: AppLayout.getHeight(20)),
          child: Column(
            children: [
              SfDateRangePicker(
                view: DateRangePickerView.month,
                monthViewSettings:
                    const DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
                selectionMode: DateRangePickerSelectionMode.range,
                selectionColor: Palette.primary,
                startRangeSelectionColor: Palette.primary,
                endRangeSelectionColor: Palette.primary,
                rangeSelectionColor: Palette.second.withOpacity(0.5),
                todayHighlightColor: Palette.primary,
                toggleDaySelection: true,
                onSelectionChanged: (DateRangePickerSelectionChangedArgs arg) {
                  if (arg.value is PickerDateRange) {
                    startDate = arg.value.startDate;
                    endDate = arg.value.endDate;
                  }
                },
              ),
              Box.h(30),
              ButtonPrimary(
                height: size.height * 0.055,
                width: size.width * 0.85,
                action: () {
                  Navigator.of(context).pop([startDate, endDate]);
                },
                text: 'Select',
                textStyle: AppFont.t.white.w700.s(20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
