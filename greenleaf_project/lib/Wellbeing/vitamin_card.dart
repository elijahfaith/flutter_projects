import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/components/iconbuttton.dart';
import 'package:greenleaf_project/const.dart';
import 'package:percent_indicator/percent_indicator.dart';

class VitaminCard extends StatelessWidget {
  const VitaminCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vitamin'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircularPercentIndicator(
                   animation: true,
                  animationDuration: 2000,
                  radius: 130,
                  lineWidth: 22,
                  percent: 0.71,
                  progressColor: deepPurpe,
                  backgroundColor: const Color.fromARGB(255, 230, 220, 253),
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/images/medimage.png')),
                      Text(
                        '2 / 4',
                        style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontSize: 30,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Vitamin pills taken',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 70),
              Container(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Iconbutton(
                      icon: Icons.remove,
                      color: Colors.grey,
                      iconColor: Colors.white,
                    ),
                    Iconbutton(
                      icon: Icons.add,
                      color: lightPurple,
                      iconColor: Colors.white,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                  onTap: () {
                    _showDialog(context);
                  },
                  child: MyButtons(ontap: () {}, text: 'Set daily goal'))
            ],
          ),
        ),
      ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    const Text('Add Vitamins count'),
                    const Spacer(),
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.close))
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                    child: Text(
                  '4.0',
                  style: TextStyle(
                      fontSize: 38,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold),
                )),
                const Divider(
                  thickness: 1,
                ),
                const Row(
                  children: [
                    Text(
                      'Date',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '24 Feb, 2021, 08:36',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                const SizedBox(height: 20),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: MyButtons(ontap: () {}, text: 'Save'))
              ],
            ),
          ));
}
