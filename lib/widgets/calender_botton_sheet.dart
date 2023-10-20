import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/widgets/check_theme.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class BottomSheetCalendar extends StatefulWidget {
  @override
  _BottomSheetCalendarState createState() => _BottomSheetCalendarState();
}

class _BottomSheetCalendarState extends State<BottomSheetCalendar> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now().subtract(Duration(days: 18 * 365));
  DateTime? _selectedDay;
  DateTime kFirstDay = DateTime.now().subtract(Duration(days: 120 * 365));
  DateTime kLastDay = DateTime.now().subtract(Duration(days: 18 * 365));
  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          border: Border.all(color: AppColor.white, width: 0.2),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(52), topLeft: Radius.circular(52))),
      height: fem * 680,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            // indicatorS8G (309:6035)
            left: 174 * fem,
            top: 10 * fem,
            child: Align(
              child: SizedBox(
                width: 27 * fem,
                height: 12.06 * fem,
                child: Image.asset(
                  'assets/ui-kit/images/indicator-hRS.png',
                  width: 27 * fem,
                  height: 12.06 * fem,
                ),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 28 * fem),
                child: Text(
                  'Select date of birth'.tr,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              Expanded(
                child: TableCalendar(
                  daysOfWeekHeight: 40 * fem,
                  firstDay: kFirstDay,
                  lastDay: kLastDay,
                  focusedDay: _focusedDay,
                  calendarFormat: _calendarFormat,
                  headerStyle: HeaderStyle(
                      titleCentered: true,
                      formatButtonVisible: false,
                      headerMargin: EdgeInsets.fromLTRB(
                          0 * fem, 20 * fem, 0 * fem, 20 * fem),
                      leftChevronIcon: Icon(
                        Icons.chevron_left,
                        color: AppColor.primary,
                      ),
                      rightChevronIcon: Icon(
                        Icons.chevron_right,
                        color: AppColor.primary,
                      )),
                  calendarStyle: CalendarStyle(
                    // cellMargin: EdgeInsets.fromLTRB(
                    //     10 * fem, 10 * fem, 10 * fem, 10 * fem),
                    outsideDaysVisible: false,
                    selectedDecoration: BoxDecoration(
                        color: AppColor.primary, shape: BoxShape.circle),
                    defaultTextStyle:
                        AppTextStyle.buildSafeGoogleFont14412575black(
                            ffem, fem),
                  ),
                  selectedDayPredicate: (day) {
                    // Use `selectedDayPredicate` to determine which day is currently selected.
                    // If this returns true, then `day` will be marked as selected.

                    // Using `isSameDay` is recommended to disregard
                    // the time-part of compared DateTime objects.
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    if (!isSameDay(_selectedDay, selectedDay)) {
                      // Call `setState()` when updating the selected day
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                      });
                    }
                  },
                  onFormatChanged: (format) {
                    if (_calendarFormat != format) {
                      // Call `setState()` when updating calendar format
                      setState(() {
                        _calendarFormat = format;
                      });
                    }
                  },
                  onPageChanged: (focusedDay) {
                    // No need to call `setState()` here
                    _focusedDay = focusedDay;
                  },
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(
                      20 * fem, 0 * fem, 20 * fem, 40 * fem),
                  child: CommonButton(
                      fem: fem,
                      ffem: ffem,
                      onPress: () {
                        Get.back();
                      },
                      text: 'Save'))
            ],
          ),
        ],
      ),
    );
  }
}
