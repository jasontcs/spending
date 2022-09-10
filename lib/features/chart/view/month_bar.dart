import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../chart.dart';

class MonthBar extends StatelessWidget implements PreferredSizeWidget {
  const MonthBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final month = context.select((ChartBloc bloc) => bloc.state.month);
    final color = Theme.of(context).colorScheme.onPrimary;
    return TableCalendar(
      focusedDay: month ?? DateTime.now(),
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
      onPageChanged: (focusedDay) {
        context.read<ChartBloc>().add(ChartMonthChanged(focusedDay));
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(46);
}
