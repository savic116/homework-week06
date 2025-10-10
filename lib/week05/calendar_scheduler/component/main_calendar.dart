import 'package:flutter/material.dart';
import 'package:table_calender/table_calender.dart';

class MainCalendar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime(1800, 1, 1), // 첫째 날
      lastDay: DateTime(3000, 1, 1),
      focusedDay: DateTime.now(),
      headerStyle: HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
      ),
      calendarStyle: CalendarStyle(
        isTodayHighlighted: false,
        
      )
    );
  }
}