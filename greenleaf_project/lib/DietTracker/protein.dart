import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenleaf_project/DietTracker/addmeal.dart';
import 'package:greenleaf_project/DietTracker/caloriesoptions.dart';
import 'package:greenleaf_project/DietTracker/diet_trackertab.dart';
import 'package:greenleaf_project/PregnancyTrackerDashboard/pregnancy_tracker_dashboard.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/const.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/cupertino.dart';

class Protein extends StatelessWidget {
  const Protein({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Protein',
            style: TextStyle(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w300)),
        centerTitle: true,
        actions: const [
          Icon(Icons.notification_add_sharp),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10, top: 20, right: 20),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/beef.jpg'),
                      fit: BoxFit.cover),
                  color: const Color(0xFF6A0D6A),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.purple,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Beef (Regular cooked)',
                style: GoogleFonts.manrope(
                    fontSize: 16, fontStyle: FontStyle.italic),
              ),
              Row(
                children: [
                  Text(
                    '251',
                    style: GoogleFonts.manrope(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: deepPurpe),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'kcal',
                    style: GoogleFonts.manrope(fontSize: 18, color: deepPurpe),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Icon(
                    Icons.water_drop,
                    color: deepPurpe,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 30, right: 10),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 220, 219, 219),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      children: [
                        Text(
                          '1',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Serving 100 g',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 35,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nutrition fact',
                    style: GoogleFonts.manrope(
                        fontSize: 16, fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CircularPercentIndicator(
                              radius: 40,
                              lineWidth: 9,
                              percent: 0.65,
                              progressColor: Colors.purple,
                              backgroundColor: backgroundcard,
                              circularStrokeCap: CircularStrokeCap.round,
                              center: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '0%',
                                    style: TextStyle(
                                        color: deepPurpe,
                                        fontStyle: FontStyle.italic, fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Carbs',
                              style: GoogleFonts.manrope(),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircularPercentIndicator(
                              radius: 40,
                              lineWidth: 9,
                              percent: 0.65,
                              progressColor: lightPurple,
                              backgroundColor: backgroundcard,
                              circularStrokeCap: CircularStrokeCap.round,
                              center: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '22%',
                                    style: TextStyle(
                                        color: deepPurpe,
                                        fontStyle: FontStyle.italic, fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15,),
                            Text(
                              'Protein',
                              style: GoogleFonts.manrope(),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircularPercentIndicator(
                              radius: 40,
                              lineWidth: 9,
                              percent: 0.65,
                              progressColor: const Color.fromARGB(255, 253, 136, 74),
                              backgroundColor: const Color.fromARGB(255, 254, 193, 140),
                              circularStrokeCap: CircularStrokeCap.round,
                              center: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '44%',
                                    style: TextStyle(
                                        color: deepPurpe,
                                        fontStyle: FontStyle.italic, fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15,),
                            Text(
                              'Fat',
                              style: GoogleFonts.manrope(),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50,),
              CaloriesOption(text: 'Carb', label: '100 g', sublabel: '0%', color: backgroundcard, space: 90,),
            const SizedBox(height: 10,),
            const Divider(thickness: 0.5,),
             CaloriesOption(text: 'Protein', label: '90 g', sublabel: '22%', color: lightPurple, space: 70,),
             const SizedBox(height: 10,),
            const Divider(thickness: 0.5,),
             CaloriesOption(text: 'Fat', label: '100 g', sublabel: '18%', color: const Color.fromARGB(255, 252, 245, 178), space: 100,),
             const SizedBox(height: 60,),

             GestureDetector(
              onTap: () {
                 _showDialog(context);
                Future.delayed(const Duration(seconds: 1), () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PregnancyTrackerDashboard()));
                });
              },
              child: MyButtons(ontap: (){}, text: 'Add')),
             const SizedBox(height: 60,),

            
            ],
          ),
        ),
      ),
    );
  }
}

_showDialog(BuildContext context) {
  showDialog(
      barrierColor: Colors.black.withOpacity(0.1),
      barrierDismissible: false,
      context: context,
      builder: (context) => CupertinoAlertDialog(
            content: Container(
              padding: const EdgeInsets.only(
                bottom: 60,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    'assets/images/Groupv.png',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Meal added\nSuccessfully',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ));
}
