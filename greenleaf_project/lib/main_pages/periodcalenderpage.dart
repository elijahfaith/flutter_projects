import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class PeriodCalenderPage extends StatefulWidget {
  const PeriodCalenderPage({super.key});

  @override
  State<PeriodCalenderPage> createState() => _PeriodCalenderPageState();
}

class _PeriodCalenderPageState extends State<PeriodCalenderPage> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cancel',
                  style: TextStyle(color: Colors.purple, fontSize: 18),
                ),
                Text(
                  'Save',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 18,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: TableCalendar(
                focusedDay: today,
                rowHeight: 60,
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextStyle: TextStyle(color: Colors.purple, fontSize: 20),
                  leftChevronVisible: false,
                  rightChevronVisible: false,
                ),
                availableGestures: AvailableGestures.all,
                firstDay: DateTime.utc(2000, 01, 01),
                lastDay: DateTime.utc(2030, 01, 01),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
