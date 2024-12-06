import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/components/reusablecontainer.dart';
import 'package:greenleaf_project/const.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/cupertino.dart';

class Stepscard extends StatefulWidget {
  const Stepscard({super.key});

  @override
  State<Stepscard> createState() => _StepscardState();
}
int selectedNumber =0;
class _StepscardState extends State<Stepscard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Steps',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notification_add_outlined)),
          const SizedBox(
            width: 20,
          )
        ],
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Goal',
                  style: GoogleFonts.manrope(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '10,000',
                  style: GoogleFonts.manrope(
                      fontSize: 26,
                      color: deepPurpe,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic),
                ),
                const SizedBox(
                  height: 40,
                ),
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 2000,
                  radius: 130,
                  lineWidth: 22,
                  percent: 0.71,
                  progressColor: deepPurpe,
                  backgroundColor: backgroundcard,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(
                          'assets/images/bigfoot.png',
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Text(
                        '6,400',
                        style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontSize: 30,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Steps',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      reusablecontainer(
                        color: const Color.fromARGB(255, 253, 203, 203), imagePath: 'assets/images/fireicon.png', text: '406 kcal',
                        
                      ),
                       reusablecontainer(
                        color: lightPurple,
                       imagePath: 'assets/images/locationicon.png', text: '1.6 km',
                      ),
                       reusablecontainer(
                        color: lightPurple,
                       imagePath: 'assets/images/clockicon.png', text: '45 min',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                  _showDialog(context);
                },
                  child: const MyButtons(ontap: null, text: 'Set daily goal'))
              ],
            ),
          )),
    );
  }
}


_showDialog(BuildContext context) {
  int selectedNumber = 0;
  const minValue =1000;
  const maxValue = 50000;
  showDialog(
    
      barrierColor: Colors.black.withOpacity(0.5),
      barrierDismissible: true,
      context: context,
      builder: (context) => CupertinoAlertDialog(
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    const Text('Set daily step goal', style: TextStyle(fontSize: 16),),
                    const Spacer(),
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.close))
                  ],
                ),
                const Divider(
                  thickness: 0.1,
                  color: Colors.black,
                ),
               
                const Row(
                  children: [
                    Text(
                      'Date',
                      style: TextStyle(fontSize: 14, color: Colors.purple),
                    ),
                    Spacer(),
                    Text(
                      '24 Feb, 2021, 08:36',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ],
                ),
                 const SizedBox(height: 40,),
                SizedBox(
              
              height: 150, 
              child: CupertinoPicker(
                itemExtent: 50.0, 
                onSelectedItemChanged: (int index) {
                  setState(() {
                    selectedNumber = minValue + index * 1000;
                  });
                },
                children: List<Widget>.generate(
                  (maxValue - minValue) ~/ 1000 + 1, 
                  (int index) {
                    int value = minValue + index * 1000;
                  return Center(
                    child: Text(
                      index.toString(),
                      style: const TextStyle(fontSize: 24, color: deepPurpe),
                    ),
                  );
                }),
              ),
            ),
 const SizedBox(height: 90,),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: MyButtons(ontap: () {}, text: 'Save'))
              ],
            ),
          ));
}

void setState(Null Function() param0) {
}

