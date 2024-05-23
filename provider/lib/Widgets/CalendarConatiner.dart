import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarContainer extends StatefulWidget {
  const CalendarContainer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalendarContainerState createState() => _CalendarContainerState();
}

class _CalendarContainerState extends State<CalendarContainer> {
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.9.sw,
      height: 0.35.sh,
      child: TableCalendar(
        focusedDay: _focusedDay,
        firstDay: DateTime(2022),
        lastDay: DateTime(2023),
      ),
    );
  }
}
