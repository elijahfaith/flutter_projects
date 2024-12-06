import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
          ),
          title: const Text('Notification'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Today - August 2nd 2024',
                style: GoogleFonts.manrope(),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 251, 237, 254),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/glass.png'),
                                ),
                                color: Color.fromARGB(255, 238, 167, 254),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Drink more water', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),),
                                SizedBox(height: 5,),
                                 Text('You drank less than 250mls today', style: TextStyle( fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        const Divider(thickness: 1,),
                        const SizedBox(height: 15,),
                         Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/sleep.png',),
                                ),
                                color: Color.fromARGB(255, 229, 115, 254),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Sleep Reminder', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),),
                                SizedBox(height: 5,),
                                 Text('It is 30minutes to your bedtime', style: TextStyle( fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                  const SizedBox(height: 20,),
                  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tuesday - August 3rd 2024',
                style: GoogleFonts.manrope(),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 251, 237, 254),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/glass.png'),
                                ),
                                color: Color.fromARGB(255, 238, 167, 254),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Leadersboard', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),),
                                SizedBox(height: 5,),
                                 Text('You came 2nd place among your friends', style: TextStyle( fontSize: 13),),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        const Divider(thickness: 1,),
                        const SizedBox(height: 15,),
                         Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/sleep.png',),
                                ),
                                color: Color.fromARGB(255, 229, 115, 254),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Sleep Reminder', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),),
                                SizedBox(height: 5,),
                                 Text('It is 30minutes to your bedtime', style: TextStyle( fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          ),
            ],
          ),
        ));
  }
}
