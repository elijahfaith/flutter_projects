import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/const.dart';
import 'package:greenleaf_project/main_pages/intro_page8.dart';
import 'package:greenleaf_project/main_pages/intro_page9.dart';
import 'package:greenleaf_project/pages/register_page.dart';

class LandingPage7 extends StatefulWidget {
  const LandingPage7({super.key});

  @override
  State<LandingPage7> createState() => _LandingPage7State();
}

class _LandingPage7State extends State<LandingPage7> {
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
              'How many days is your',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
            const Text(
              'cycle?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 150,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  height: 150,
                  child: CupertinoPicker(
                    itemExtent: 55.0,
                    onSelectedItemChanged: (int index) {
                      setState(() {
                        selectedNumber = index;
                      });
                    },
                    children: List<Widget>.generate(32, (int index) {
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
                  _showDialog(context);
                  Future.delayed(const Duration(seconds: 1), () {
                    Navigator.of(context).pop();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LandingPage9()));
                  });
                },
                child: MyButtons(ontap: () {}, text: 'Continue'))
          ],
        ),
      )),
    );
  }
}

_showDialog(BuildContext context) {
  showDialog(
      barrierColor: Colors.black.withOpacity(0.5),
      barrierDismissible: true,
      context: context,
      builder: (context) => CupertinoAlertDialog(
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset('assets/images/circle_check.png'),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'You are all set',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 50),
                Image.asset('assets/images/coralreeflogo.png'),
              ],
            ),
          ));
}
