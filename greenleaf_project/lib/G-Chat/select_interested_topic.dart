import 'package:flutter/material.dart';
import 'package:greenleaf_project/G-Chat/G-Chat.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/components/text%20widget1.dart';
import 'package:greenleaf_project/components/text%20widget2.dart';

class SelectInterestedTopic extends StatelessWidget {
  const SelectInterestedTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title:const Text(
                    'Select interested topics',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ), ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top:30, left:30, bottom: 20, right: 30),
          child: Column(
            children: [
              
              const Center(
                child: Text('Add topic you will be interested in.'),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text('Interests are private to you'),
              const SizedBox(height: 100),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      topics_widget(
                        text: 'Sex life',
                        color: const Color.fromARGB(255, 250, 226, 254),
                      ),
                      topics_widget(
                        text: 'Relationships',
                        color: const Color.fromARGB(255, 250, 226, 254),
                      ),
                      topics_widget2(
                        text: 'My body',
                        color: const Color.fromARGB(255, 213, 213, 213),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      topics_widget2(
                        text: 'Health',
                        color: const Color.fromARGB(255, 213, 213, 213),
                      ),
                      topics_widget(
                        text: 'Period and cycle',
                        color: const Color.fromARGB(255, 250, 226, 254),
                      ),
                      topics_widget2(
                        text: 'Parenting',
                        color: const Color.fromARGB(255, 213, 213, 213),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      topics_widget2(
                        text: 'Pregnancy',
                        color: const Color.fromARGB(255, 213, 213, 213),
                      ),
                      topics_widget2(
                        text: 'Entertainment',
                        color: const Color.fromARGB(255, 213, 213, 213),
                      ),
                      topics_widget2(
                        text: 'Harmony',
                        color: const Color.fromARGB(255, 213, 213, 213),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      topics_widget2(
                        text: 'Trying to conceive',
                        color: const Color.fromARGB(255, 213, 213, 213),
                      )
                    ],
                  ),
                  const SizedBox(height: 200,),
                 GestureDetector
              ( onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const G_Chat()));
                    },
                child: MyButtons(ontap: () {}, text: 'Continue'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
