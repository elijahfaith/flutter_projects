import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/landingbutton2.dart';
import 'package:greenleaf_project/components/landingbuttons.dart';
import 'package:greenleaf_project/main_pages/page_intro4.dart';

class LandingPage3 extends StatefulWidget {
  const LandingPage3({super.key});

  @override
  State<LandingPage3> createState() => _LandingPage3State();
}

class _LandingPage3State extends State<LandingPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What are you trying to do?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(onTap: () {
               Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LandingPage4()));
              
            },
                     
                    
              child: LandingButton2(
                  text: 'Track Period',
                  color: const Color.fromARGB(255, 250, 226, 254),
                  image: 'assets/images/landingicon1.png'),
            ),
            const SizedBox(
              height: 25,
            ),
            LandingButton2(
                text: 'Trying to Conceive',
                color: const Color.fromARGB(255, 190, 197, 254),
                image: 'assets/images/landingicon5.png'),
            const SizedBox(
              height: 25,
            ),
            LandingButton2(
                text: 'Track Pregnancy',
                color: const Color.fromARGB(255, 250, 226, 254),
                image: 'assets/images/landingicon6.png'),
            const SizedBox(
              height: 40,
            ),
            const Center(
                child: Text(
              'You can always change preference later',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            ))
          ],
        ),
      )),
    );
  }
}
