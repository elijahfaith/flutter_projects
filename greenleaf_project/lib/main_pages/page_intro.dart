import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:greenleaf_project/G-Chat/choose_avatar.dart';
import 'package:greenleaf_project/components/CardStaggeredWidget.dart';
import 'package:greenleaf_project/main_pages/page_intro3.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LandingPage extends StatefulWidget {
  LandingPage({super.key});

  User? currentUser = FirebaseAuth.instance.currentUser;

  Future<DocumentSnapshot<Map<String, dynamic>>> getUserDetails() async {
    return await FirebaseFirestore.instance.collection('users').doc().get();
  }

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/coralreeflogo.png'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Hi !',
                      style: TextStyle(
                          fontFamily: 'Avenir Next',
                          fontSize: 38,
                          fontWeight: FontWeight.w600),
                    ),
                    const Text('Hope you are feeling good today',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300)),
                    const SizedBox(
                      height: 10,
                    ),
                    StaggeredGrid.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: [
                        cardStaggeredWidgets(
                          crossAxis: 1,
                          MainAxis: 1.5,
                          LabelText:
                              'Keep track of your\nwellbeing,\n exercise, period\nand diet',
                          Label: 'Wellness\nTracker',
                          image: 'assets/images/Grid1.png',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const LandingPage3()));
                          },
                        ),
                        cardStaggeredWidgets(
                          crossAxis: 1,
                          MainAxis: 1.3,
                          LabelText: 'All you things need\nunder one Click',
                          Label: 'Shop\nCoral',
                          image: 'assets/images/Grid3.png',
                          onTap: null,
                        ),
                        cardStaggeredWidgets(
                          crossAxis: 1,
                          MainAxis: 1.8,
                          LabelText: 'All you things need\nunder one Click',
                          Label: 'G-Expert\nCorner',
                          image: 'assets/images/Grid4.png',
                          onTap: null,
                        ),
                        cardStaggeredWidgets(
                          crossAxis: 1,
                          MainAxis: 1.6,
                          LabelText: 'Chat with us to\nsolve your issues',
                          Label: 'G - Chat',
                          image: 'assets/images/Grid2.png',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ChooseAvatar()));
                          },
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
