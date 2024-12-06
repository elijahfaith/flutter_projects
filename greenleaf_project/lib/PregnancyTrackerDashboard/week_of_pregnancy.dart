import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:greenleaf_project/components/loginsymptom.dart';

class WeekOfPregnancy extends StatelessWidget {
  const WeekOfPregnancy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(Icons.sunny, color: Colors.purple),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'WED 24  FEB',
                        selectionColor: Colors.black,
                        style: TextStyle(color: Colors.purple, fontSize: 15),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.notification_add_outlined,
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 90,
              margin: const EdgeInsets.only(left: 30, top: 20, right: 30),
              child: DatePicker(
                DateTime.now(),
                height: 80,
                width: 50,
                initialSelectedDate: DateTime.now(),
                selectionColor: Colors.purple,
                selectedTextColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/weekperiod.png'),
                  ),
                  borderRadius: BorderRadius.circular(13)),
              child: const Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 170,
                    ),
                    Text(
                      '     Pregnancy',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Week 17',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 85,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: const Color.fromARGB(255, 255, 129, 125),
                      )),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/conarrow.png'),
                        color: Color.fromARGB(255, 255, 129, 125),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Previous \n   week',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 129, 125),
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 90,
                  width: 85,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: const Color.fromARGB(255, 173, 121, 218),
                      )),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/microblog.png'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Blog',
                        style: TextStyle(
                            color: Color.fromARGB(255, 173, 121, 218),
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 90,
                  width: 85,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: const Color.fromARGB(255, 244, 233, 83),
                      )),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/conarrowfor.png'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Next \nweek',
                        style: TextStyle(
                            color: Color.fromARGB(255, 244, 233, 83),
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            const LoginSymptoms()
          ],
        ),
      ),
    );
  }
}
