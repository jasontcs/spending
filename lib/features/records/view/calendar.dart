import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../generated/l10n.dart';
import '../records.dart';

class RecordsCalendar extends StatelessWidget {
  const RecordsCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    final config =
        context.select((RecordsBloc bloc) => bloc.state.calendarConfig);
    final records = context.select((RecordsBloc bloc) => bloc.state.records);
    final colorScheme = Theme.of(context).colorScheme;
    return TableCalendar(
      locale: S.of(context).locale,
      firstDay: DateTime.utc(0),
      lastDay: DateTime.utc(9999),
      focusedDay: config.focusedDay ?? DateUtils.dateOnly(DateTime.now()),
      selectedDayPredicate: (day) =>
          DateUtils.isSameDay(config.selectedDate, day),
      weekendDays: const [DateTime.sunday],
      onDaySelected: (selectedDay, focusedDay) {
        if (!DateUtils.isSameDay(config.selectedDate, selectedDay)) {
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
            .where((record) => DateUtils.isSameDay(record.dateTime, day))
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
        todayTextStyle: const TextStyle(),
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
      availableCalendarFormats: const {CalendarFormat.month: ''},
      onPageChanged: (focusedDay) {
        context.read<RecordsBloc>().add(
              RecordsCalendarConfigChanged(
                TableCalendarConfig(focusedDay: focusedDay),
              ),
            );
      },
      calendarBuilders: const CalendarBuilders(),
      rowHeight: 62,
    );
  }
}
