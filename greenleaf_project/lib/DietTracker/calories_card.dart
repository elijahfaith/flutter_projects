import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenleaf_project/DietTracker/addmeal.dart';
import 'package:greenleaf_project/DietTracker/caloriesoptions.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/const.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CaloriesCard extends StatelessWidget {
  const CaloriesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calories',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w300),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.notification_add_outlined),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Center(
                child: Text(
              'Goal',
              style: GoogleFonts.manrope(),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '2,230 kcal',
                  style: GoogleFonts.manrope(
                      fontSize: 22,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.water_drop,
                  color: Colors.purple,
                )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            CircularPercentIndicator(
              radius: 100,
              lineWidth: 20,
              percent: 0.65,
              progressColor: Colors.purple,
              backgroundColor: backgroundcard,
              circularStrokeCap: CircularStrokeCap.round,
              center: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You have taken',
                    style: TextStyle(
                        color: deepPurpe, fontStyle: FontStyle.italic),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '1,400',
                        style: TextStyle(
                            fontSize: 20,
                            color: deepPurpe,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'kcal',
                        style: TextStyle(
                            color: deepPurpe, fontStyle: FontStyle.italic),
                      ),
                      Icon(
                        Icons.water_drop,
                        color: deepPurpe,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CaloriesOption(text: 'Carb', label: '100 g', sublabel: '32%', color: backgroundcard, space: 90,),
            const SizedBox(height: 10,),
            const Divider(thickness: 0.5,),
             CaloriesOption(text: 'Protein', label: '90 g', sublabel: '40%', color: lightPurple, space: 70,),
             const SizedBox(height: 10,),
            const Divider(thickness: 0.5,),
             CaloriesOption(text: 'Fat', label: '100 g', sublabel: '28%', color: const Color.fromARGB(255, 252, 245, 178), space: 110,),
             const SizedBox(height: 30,),
             Container(
              height:40,
              width: 120,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: backgroundcard),
              child: Center(child: Text('Add calories', style: GoogleFonts.manrope(color: deepPurpe),),)

             ),
             const Padding(
               padding: EdgeInsets.only(left: 100, right: 100),
               child: Divider(thickness: 0.5,  ),
             ),
             const SizedBox(height: 20,),
             GestureDetector(onTap: (){ Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Addmeal()));},
              child: MyButtons(ontap: (){}, text: 'Add meal'))
          ],
        ),
      ),
    );
  }
}
