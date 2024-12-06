import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:greenleaf_project/components/iconbuttton.dart';
import 'package:greenleaf_project/const.dart';
import 'package:google_fonts/google_fonts.dart';

class Gpssetting extends StatefulWidget {
  const Gpssetting({super.key});

  @override
  State<Gpssetting> createState() => _GpssettingState();
}

bool _enable = false;
bool _enable2 = true;
bool _time = true;
bool _distance = true;
bool _pace = false;
bool _steps = false;
bool _calories = false;

class _GpssettingState extends State<Gpssetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GPS Setting',
            style: TextStyle(
                fontWeight: FontWeight.w300, fontStyle: FontStyle.italic)),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.settings)),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(color: lightgrey),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'LIVE TRACKING',
                    style: GoogleFonts.manrope(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enable',
                    style: GoogleFonts.manrope(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'If turned ON, a button will appear before\nand during GPS activities that allows you\nto share real-time location with chosen\ncontacts',
                        style: GoogleFonts.manrope(color: Colors.grey),
                      ),
                      CupertinoSwitch(
                          activeColor: Colors.purple,
                          value: _enable,
                          onChanged: (bool value) {
                            setState(() {
                              _enable = value;
                            });
                          }),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(color: lightgrey),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'AUDIO CUES',
                    style: GoogleFonts.manrope(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enable',
                    style: GoogleFonts.manrope(fontSize: 16),
                  ),
                  CupertinoSwitch(
                      activeColor: Colors.purple,
                      value: _enable2,
                      onChanged: (bool value) {
                        setState(() {
                          _enable2 = value;
                        });
                      }),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(color: lightgrey),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'FEEBACK OPTIONS',
                    style: GoogleFonts.manrope(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Feedback Frequency ',
                        style: GoogleFonts.manrope(fontSize: 17),
                      ),
                      const Spacer(),
                      Text(
                        '5mins ',
                        style: GoogleFonts.manrope(
                            fontSize: 16, color: Colors.purple),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const Divider(
                    thickness: 0.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Time',
                        style: GoogleFonts.manrope(fontSize: 17),
                      ),
                      CupertinoSwitch(
                          activeColor: Colors.purple,
                          value: _time,
                          onChanged: (bool value) {
                            setState(() {
                              _time = value;
                            });
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const Divider(
                    thickness: 0.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Distance',
                        style: GoogleFonts.manrope(fontSize: 17),
                      ),
                      CupertinoSwitch(
                          activeColor: Colors.purple,
                          value: _distance,
                          onChanged: (bool value) {
                            setState(() {
                              _distance = value;
                            });
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const Divider(
                    thickness: 0.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pace',
                        style: GoogleFonts.manrope(fontSize: 17),
                      ),
                      CupertinoSwitch(
                          activeColor: Colors.purple,
                          value: _pace,
                          onChanged: (bool value) {
                            setState(() {
                              _pace = value;
                            });
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const Divider(
                    thickness: 0.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Steps',
                        style: GoogleFonts.manrope(fontSize: 17),
                      ),
                      CupertinoSwitch(
                          activeColor: Colors.purple,
                          value: _steps,
                          onChanged: (bool value) {
                            setState(() {
                              _steps = value;
                            });
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const Divider(
                    thickness: 0.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Calories',
                        style: GoogleFonts.manrope(fontSize: 17),
                      ),
                      CupertinoSwitch(
                          activeColor: Colors.purple,
                          value: _calories,
                          onChanged: (bool value) {
                            setState(() {
                              _calories = value;
                            });
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const Divider(
                    thickness: 0.5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
