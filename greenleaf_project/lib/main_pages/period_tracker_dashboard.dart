import 'package:flutter/material.dart';
import 'package:greenleaf_project/DietTracker/diet_trackertab.dart';
import 'package:greenleaf_project/ExerciseTracker/ExerciseTracker.dart';
import 'package:greenleaf_project/PregnancyTrackerDashboard/Pregnancytab.dart';
import 'package:greenleaf_project/Wellbeing/well_being.dart';
import 'package:greenleaf_project/components/loginsymptom.dart';
import 'package:greenleaf_project/components/radialguage.dart';
import 'package:greenleaf_project/periodtrackertab.dart';
import 'package:greenleaf_project/profile_account/account.dart';
import 'package:greenleaf_project/profile_account/account_option.dart';
import 'package:greenleaf_project/profile_account/account_setting.dart';
import 'package:greenleaf_project/profile_account/edit_profile_widget.dart';
import 'package:greenleaf_project/profile_account/notification_page.dart';

class PeriodTrackerDashboard extends StatefulWidget {
  const PeriodTrackerDashboard({super.key});

  @override
  State<PeriodTrackerDashboard> createState() => _PeriodTrackerDashboardState();
}

List<String> items = [
  "Period tracker",
  "Diet tracker",
  "Exercise tracker",
  "Pregnancy tracker",
  "Well-being tracker"
];
 int current = 0;

class _PeriodTrackerDashboardState extends State<PeriodTrackerDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 10, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  const AccountPage()));
                      },
                      child: const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/adetobi.png'),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.sunny, color: Colors.purple),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'WED 24  FEB',
                          selectionColor: Colors.black,
                          style: TextStyle(color: Colors.purple, fontSize: 15),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  const NotificationPage()));
                      },
                          child: const Icon(
                            Icons.notifications,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 40,
                   child: ListView.builder(
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (cxt, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                        },
                        child: Container( margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.symmetric(horizontal: 18,),
                        decoration: BoxDecoration(color: current == index ?const Color.fromARGB(255, 250, 226, 254) : const Color.fromARGB(255, 239, 238, 238), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                         child: Text(items[index], style: TextStyle(color: current == index ? Colors.purple : Colors.black, fontSize: 15),),
                        ),),
                      );
                    }),
                 ),
                  IndexedStack(
                    index: current,
                    children: const [
                      Center(child: Periodtrackertab()),
                      Center(child: DietTrackertab()),
                      Center(child: Exercisetrackertab()),
                      Center(child: Pregnancytab()),
                      Center(child: WellBeing()),
                    ],
                  )
             
            ],
          ),
        ),
      ),
    );
  }
}
