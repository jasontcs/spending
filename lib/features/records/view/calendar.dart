import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spending_repository/spending_repository.dart';
import 'package:table_calendar/table_calendar.dart';

import '../records.dart';

class RecordsCalendar extends StatelessWidget {
  const RecordsCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final config =
        context.select((RecordsBloc bloc) => bloc.state.calendarConfig);
    final records = context.select((RecordsBloc bloc) => bloc.state.records);
    final colorScheme = Theme.of(context).colorScheme;
    return TableCalendar(
      locale: 'zh_HK',
      firstDay: DateTime.utc(0),
      lastDay: DateTime.utc(9999),
      focusedDay: config.focusedDay ?? DateTime.now(),
      selectedDayPredicate: (day) => isSameDay(config.selectedDate, day),
      weekendDays: [DateTime.sunday],
      onDaySelected: (selectedDay, focusedDay) {
        if (!isSameDay(config.selectedDate, selectedDay)) {
          context.read<RecordsBloc>().add(
                RecordsCalendarConfigChanged(
                  TableCalendarConfig(
                    focusedDay: focusedDay,
                    selectedDate: selectedDay,
                  ),
                ),
              );
        }
      },
      eventLoader: (day) {
        return records
            .where((record) => isSameDay(record.dateTime, day))
            .toList();
      },
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: TextStyle(color: colorScheme.onSurface),
        weekendStyle: TextStyle(color: colorScheme.error),
      ),
      headerStyle: const HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
      ),
      calendarStyle: CalendarStyle(
        outsideDaysVisible: false,
        markerDecoration: BoxDecoration(
          color: colorScheme.tertiaryContainer,
          shape: BoxShape.circle,
          boxShadow: kElevationToShadow[1],
        ),
        todayTextStyle: TextStyle(),
        todayDecoration: BoxDecoration(
          color: colorScheme.secondaryContainer,
          shape: BoxShape.circle,
        ),
        selectedTextStyle: TextStyle(
          color: colorScheme.onPrimary,
        ),
        selectedDecoration: BoxDecoration(
          color: colorScheme.primary,
          shape: BoxShape.circle,
        ),
        weekendTextStyle: TextStyle(color: colorScheme.error),
        defaultTextStyle: TextStyle(color: colorScheme.onSurface),
      ),
      availableCalendarFormats: {CalendarFormat.month: ''},
      onPageChanged: (focusedDay) {
        context.read<RecordsBloc>().add(
              RecordsCalendarConfigChanged(
                TableCalendarConfig(focusedDay: focusedDay),
              ),
            );
      },
      calendarBuilders: CalendarBuilders(
        markerBuilder: (context, day, List<Record> records) {
          if (records.isNotEmpty) {
            final total = records.fold<double>(
                0, (total, current) => total += current.amount);
            final theme = Theme.of(context);
            return Text(
              total.toStringAsFixed(0),
              style: theme.primaryTextTheme.labelSmall?.copyWith(
                // color: theme.colorScheme.outline,
                color: theme.colorScheme.tertiaryContainer,
                // fontWeight: FontWeight.bold,
                shadows: kElevationToShadow[2],
                // shadows: [
                //   Shadow(
                //     offset: Offset(1, 1),
                //     blurRadius: 5.0,
                //     color: theme.colorScheme.surface,
                //   ),
                // ],
              ),
            );
          }
          return null;
        },
      ),
      rowHeight: 62,
    );
  }
}
