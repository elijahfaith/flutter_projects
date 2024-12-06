import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';

class DueDateCalculatePage extends StatelessWidget {
  const DueDateCalculatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          
          const Text(
            'Due date Calculator',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 60,
          ),
          const Icon(
            Icons.calendar_month_outlined,
            color: Colors.purple,
          ),
          const Divider(
            thickness: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            ' Enter the first date of your last period and get info about your due date',
            style: TextStyle(fontSize: 16),
          ),
         const Spacer(),
          MyButtons(ontap: () {}, text: 'Submit')
        ]),
      )),
    );
  }
}
