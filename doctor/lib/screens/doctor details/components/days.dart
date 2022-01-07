import 'package:flutter/material.dart';
import 'package:day_picker/day_picker.dart';

class Days extends StatefulWidget {
  @override
  _DaysState createState() => _DaysState();
}

class _DaysState extends State<Days> {
  List<DayInWeek> _days = [
    DayInWeek(
      "Sun",
    ),
    DayInWeek(
      "Mon",
    ),
    DayInWeek("Tue", isSelected: true),
    DayInWeek(
      "Wed",
    ),
    DayInWeek(
      "Thu",
    ),
    DayInWeek(
      "Fri",
    ),
    DayInWeek(
      "Sat",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SelectWeekDays(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      days: _days,
      border: false,
      boxDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          colors: [const Color(0xFFE55CE4), const Color(0xFFBB75FB)],
          tileMode: TileMode.repeated, // repeats the gradient over the canvas
        ),
      ),
      onSelect: (values) {
        // <== Callback to handle the selected days
        print(values);
      },
    );
  }
}
