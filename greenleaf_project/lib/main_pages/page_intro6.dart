import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/main_pages/intro_page7.dart';
import 'package:greenleaf_project/const.dart';

class LandingPage6 extends StatefulWidget {
  const LandingPage6({super.key});

  @override
  State<LandingPage6> createState() => _LandingPage6State();
}

class _LandingPage6State extends State<LandingPage6> {
    int selectedNumber = 0; 
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
              'How long is your period',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 200,
            ),
            Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        SizedBox(
          height: 150, 
          child: CupertinoPicker(
            itemExtent:55.0, 
            onSelectedItemChanged: (int index) {
              setState(() {
                selectedNumber = index;
              });
            },
            children: List<Widget>.generate(100, (int index) {
              return Center(
                child: Text(
                  index.toString(),
                  style: const TextStyle(fontSize: 30, color: deepPurpe),
                ),
              );
            }),
          ),
        ),
      ],
    ),

            const SizedBox(
              height: 200,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LandingPage7()));
                },
                child: MyButtons(ontap: () {}, text: 'Continue')),
          ],
        ),
      )),
    );
  }
}
