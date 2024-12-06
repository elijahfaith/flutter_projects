import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenleaf_project/DietTracker/calories_card.dart';
import 'package:greenleaf_project/DietTracker/water_tracker.dart';
import 'package:greenleaf_project/DietTracker/weight_card.dart';
import 'package:greenleaf_project/Wellbeing/Insight_Page.dart';
import 'package:greenleaf_project/components/iconbuttton.dart';
import 'package:greenleaf_project/const.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:hexcolor/hexcolor.dart';

class DietTrackertab extends StatelessWidget {
  const DietTrackertab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hi Dupe,',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Good morning, select a card to get started',
            style: TextStyle(letterSpacing: 0.5, fontSize: 16),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CaloriesCard()));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 20, right: 10),
                      width: 175,
                      height: 250,
                      decoration: BoxDecoration(
                        color: const Color(0xFF6A0D6A),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Calories',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CircularPercentIndicator(
                             animation: true,
                            animationDuration: 2000,
                            radius: 53,
                            lineWidth: 11,
                            percent: 0.5,
                            progressColor: const Color.fromARGB(255, 233, 134, 250),
                            backgroundColor: Colors.purple,
                            circularStrokeCap: CircularStrokeCap.round,
                            center: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.water_drop,
                                  color: Colors.white,
                                ),
                                Text(
                                  'kcal',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            '1,400 kcal',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Goal: 2,230 kcal',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WeightCard()));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 20, right: 10),
                      width: 175,
                      height: 250,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 250, 226, 254),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('Weight',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Color(0xFF6A0D6A),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset('assets/images/Shape.png'),
                          const SizedBox(
                            height: 40,
                          ),
                          const Text('70kg',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Color(0xFF6A0D6A),
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Goal: 60kg',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Color(0xFF6A0D6A),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: (){
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WaterTracker()));},
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: lightPurple),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Water',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '7/10',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Iconbutton(
                        icon: Icons.remove,
                        color: Colors.white, iconColor: lightPurple,
                      ),
                      const SizedBox(width: 5),
                      Image.asset('assets/images/glass.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      Iconbutton(icon: Icons.add, color: Colors.white, iconColor: lightPurple,)
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
             onTap: (){
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const InsightPageWellbeing()));},
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: backgroundcard),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Insight',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: deepPurpe),
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/images/Shape.png',
                        scale: 2,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    children: [
                      Text(
                        '70',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: deepPurpe),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'kg',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: deepPurpe),
                      ),
                      Spacer(),
                      Text(
                        '0.0',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: deepPurpe),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'kg',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: deepPurpe),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Current Weight',
                        style: TextStyle(color: deepPurpe),
                      ),
                      Spacer(),
                      Text(
                        'New Weight',
                        style: TextStyle(color: deepPurpe),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
