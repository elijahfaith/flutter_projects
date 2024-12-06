import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/components/login_button.dart';
import 'package:greenleaf_project/components/mood_symptoms.dart';
import 'package:greenleaf_project/components/symtoms.dart';
import 'package:greenleaf_project/components/vaginal_discharge.dart';
import 'package:greenleaf_project/main_pages/add_note_screen.dart';

class LoginSymptomsPage extends StatelessWidget {
  const LoginSymptomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.close_outlined,
                          size: 34,
                        ),
                      ),
                      const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.sunny, color: Colors.purple),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'WED 24  FEB',
                                    selectionColor: Colors.black,
                                    style: TextStyle(
                                        color: Colors.purple, fontSize: 15),
                                  ),
                                ],
                              ),
                              Text(
                                'Cycle day 9',
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Mood',
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Mood_symtoms(
                      text: 'Calm',
                      icon: Icons.mood_bad_outlined,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Mood_symtoms(text: 'Happy', icon: Icons.mood),
                    SizedBox(
                      width: 10,
                    ),
                    Mood_symtoms(text: 'Energetic', icon: Icons.mood),
                    SizedBox(
                      width: 10,
                    ),
                    Mood_symtoms(text: 'Frisky', icon: Icons.mood),
                    SizedBox(
                      width: 10,
                    ),
                    Mood_symtoms(text: 'Sad', icon: Icons.mood)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Mood_symtoms(
                      text: 'Anxious',
                      icon: Icons.mood_bad_outlined,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Mood_symtoms(text: 'Feeling \n guilty', icon: Icons.mood),
                    SizedBox(
                      width: 10,
                    ),
                    Mood_symtoms(text: 'Confused', icon: Icons.mood),
                    SizedBox(
                      width: 10,
                    ),
                    Mood_symtoms(text: 'Irritated', icon: Icons.mood),
                    SizedBox(
                      width: 10,
                    ),
                    Mood_symtoms(text: '   Self \ncritical', icon: Icons.mood)
                  ],
                ),
                const SizedBox(height: 40),
                const Text(
                  'Symptoms',
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 20),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    symptoms(
                        text: 'All good', image: 'assets/images/all good.png'),
                    symptoms(text: 'Cramps', image: 'assets/images/cramps.png'),
                    symptoms(
                        text: ' Tender \n breasts',
                        image: 'assets/images/tender breasts.png'),
                    symptoms(
                        text: 'Headache', image: 'assets/images/headache.png'),
                    symptoms(text: 'Acne', image: 'assets/images/Acne.png')
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    symptoms(
                        text: 'Backache', image: 'assets/images/backache.png'),
                    symptoms(text: 'Nausea', image: 'assets/images/nausea.png'),
                    symptoms(
                        text: 'Fatigue', image: 'assets/images/fatigue.png'),
                    symptoms(
                        text: 'Bloating', image: 'assets/images/bloating.png'),
                    symptoms(
                        text: 'Diarrhea', image: 'assets/images/diarrhea.png')
                  ],
                ),
                const SizedBox(height: 40),
                const Text(
                  'Vaginal Discharge',
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VaginalDischarge(
                        text: '      No \n dicharge',
                        image: 'assets/images/no discharge.png'),
                    VaginalDischarge(
                        text: 'Spotting', image: 'assets/images/spotting.png'),
                    VaginalDischarge(
                        text: 'Sticky', image: 'assets/images/sticky.png'),
                    VaginalDischarge(
                        text: 'Creamy', image: 'assets/images/creamy.png'),
                    VaginalDischarge(
                        text: 'Eggwhite', image: 'assets/images/Egg wheel.png'),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Notes',
                          style: TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(height: 10),
                        Text('Log a symptoms or write a note')
                      ],
                    ),
                    RawMaterialButton(
                      constraints:
                          const BoxConstraints.tightFor(width: 55, height: 55),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddNoteScreen()));
                      },
                      shape: const CircleBorder(),
                      fillColor: Colors.purple,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 40,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                MyButtons(ontap: () {}, text: 'Apply')
              ],
            ),
          ),
        )));
  }
}
