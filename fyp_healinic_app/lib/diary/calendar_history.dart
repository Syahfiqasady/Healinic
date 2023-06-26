import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import 'event.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TableCalendar(
        focusedDay: DateTime.now(),
        firstDay: DateTime.utc(2021, 01, 01),
        lastDay: DateTime(2025, 12, 12),
      ),


    );
  }
}

