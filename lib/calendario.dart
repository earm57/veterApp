import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class TableBasicsExample extends StatefulWidget {
  @override
  _TableBasicsExampleState createState() => _TableBasicsExampleState();
}

class _TableBasicsExampleState extends State<TableBasicsExample> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Calendario - VeterApp'),
      // ),
      body: Container(
        margin: EdgeInsets.only(top: 25),
        alignment: AlignmentDirectional.center,
        child: Column(
          children: [
            Stack(children: [
              SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: Image.asset(
                    "assets/images/IconoVeterApp.png",
                    scale: 1.5,
                  )),
              Positioned(
                right: 1,
                child: CircleAvatar(
                  backgroundColor: Colors.brown.shade800,
                  child: const Text(
                    'VA',
                    style: TextStyle(fontSize: 35),
                  ),
                  radius: 35,
                ),
              )
            ]),
            Text(
              "CALENDARIO",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 24),
            ),
            TableCalendar(
              firstDay: DateTime.now(),
              lastDay: DateTime.utc(2030),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
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
          ],
        ),
      ),
    );
  }
}
