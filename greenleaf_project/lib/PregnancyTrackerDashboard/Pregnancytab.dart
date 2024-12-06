import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:greenleaf_project/PregnancyTrackerDashboard/due_date.dart';
import 'package:greenleaf_project/PregnancyTrackerDashboard/get_tips.dart';
import 'package:greenleaf_project/PregnancyTrackerDashboard/pregnancystaggered.dart';
import 'package:greenleaf_project/PregnancyTrackerDashboard/week_of_pregnancy.dart';
import 'package:greenleaf_project/PregnancyTrackerDashboard/your_baby.dart';
import 'package:greenleaf_project/PregnancyTrackerDashboard/your_body.dart';
import 'package:greenleaf_project/components/CardStaggeredWidget.dart';
import 'package:greenleaf_project/components/optionWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:greenleaf_project/components/tips_component.dart';

class Pregnancytab extends StatelessWidget {
  const Pregnancytab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hi Dupe,',
              style: TextStyle(
                  fontFamily: 'Avenir Next',
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
           const Text(
              'Good morning, select a card to get started',
              style: TextStyle(
                  letterSpacing: 0.2, fontFamily: 'Avenir Next', fontSize: 16),
            ),
            const SizedBox(height: 30),
            StaggeredGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children:  [
                PregnancytaggeredWidgets(
                  crossAxis: 1,
                  MainAxis: 1.5,
                  LabelText: '  17th week',
                  Label: ' Week of\npregnancy',
                  image: 'assets/images/stag1.png', onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  const WeekOfPregnancy()));
                      },
                ),
                PregnancytaggeredWidgets(
                  crossAxis: 1,
                  MainAxis: 1.5,
                  LabelText: '  Feb 23, 2024',
                  Label: ' Due date of\nbirth',
                  image: 'assets/images/stag2.png', onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  const DueDateCalculatePage()));
                      },
                ),
              ],
            ),
            const SizedBox(height: 40),
            option_Widget(
              Label: 'Your body',
              labelText: 'Learn about your body',
              Ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  YourBody()));
                      },
            ),
            const SizedBox(
              height: 20,
            ),
            option_Widget(
                Label: 'Your baby',
                labelText: 'Learn more about your baby',
                Ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  YourBaby()));
                      },),
            const SizedBox(
              height: 20,
            ),
            option_Widget(
                Label: 'Tips', labelText: 'Get helpful tips', Ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  GetTips()));
                      },)
          ],
        ),
      ),
    );
  }
}
