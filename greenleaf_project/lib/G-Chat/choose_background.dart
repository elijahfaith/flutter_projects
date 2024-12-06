import 'package:flutter/material.dart';
import 'package:greenleaf_project/G-Chat/choose_avatar.dart';
import 'package:greenleaf_project/G-Chat/select_interested_topic.dart';
import 'package:greenleaf_project/components/button.dart';

class ChooseBackgroundAvatar extends StatelessWidget {
  const ChooseBackgroundAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( centerTitle: true, title:  const Text(
                  'Choose your Avatar',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),),
      body: Padding(
              padding: const EdgeInsets.only(left:30, right:30),
              child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
                   Center(
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color.fromARGB(255, 169, 159, 254),
            ),
            child: const Center(
              child: Image(
                image: AssetImage('assets/images/Avatar2.png'),
                height: 70,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.cyan),
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.purple),
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.yellow),
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.pink),
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.red),
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.brown.shade400),
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue.shade500),
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.green),
            ),
          ],
        ),
        const SizedBox(height: 30),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            avatar_container(
              image: 'assets/images/Avatar1.png',
            ),
            avatar_container(image: 'assets/images/Avatar2.png'),
            avatar_container(image: 'assets/images/Avatar3.png')
          ],
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            avatar_container(
              image: 'assets/images/Avatar4.png',
            ),
            avatar_container(image: 'assets/images/Avatar5.png'),
            avatar_container(image: 'assets/images/Avatar6.png')
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            avatar_container(
              image: 'assets/images/Avatar7.png',
            ),
            avatar_container(image: 'assets/images/Avatar8.png'),
            avatar_container(image: 'assets/images/Avatar9.png')
          ],
        ),
        const SizedBox(
          height: 90,
        ),
        GestureDetector
              ( onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SelectInterestedTopic()));
                    },
                child: MyButtons(ontap: () {}, text: 'Save'))
      ],
              ),
            ),
    );
  }
}
