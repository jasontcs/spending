import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../features/chart/chart.dart';

class MonthBar extends StatelessWidget implements PreferredSizeWidget {
  const MonthBar({
    Key? key,
    required this.focusedMonth,
    this.onPageChanged,
  }) : super(key: key);

  final DateTime focusedMonth;
  final void Function(DateTime focusedDay)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.onPrimary;
    return TableCalendar(
      focusedDay: focusedMonth,
      firstDay: DateTime.utc(0),
      lastDay: DateTime.utc(9999),
      daysOfWeekVisible: false,
      calendarBuilders: CalendarBuilders(
        defaultBuilder: (context, day, focusedDay) => SizedBox.shrink(),
        prioritizedBuilder: (context, day, focusedDay) => SizedBox.shrink(),
      ),
      availableCalendarFormats: {CalendarFormat.month: ''},
      headerStyle: HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
        titleTextStyle: TextStyle(
          fontSize: 17,
          color: color,
        ),
        leftChevronIcon: Icon(
          Icons.chevron_left,
          color: color,
        ),
        rightChevronIcon: Icon(
          Icons.chevron_right,
          color: color,
        ),
      ),
      rowHeight: 0,
      daysOfWeekHeight: 0,
      onPageChanged: onPageChanged,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(46);
}
