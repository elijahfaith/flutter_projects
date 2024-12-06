import 'package:flutter/material.dart';
import 'package:greenleaf_project/G-Chat/choose_background.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/components/login_button.dart';

class ChooseAvatar extends StatelessWidget {
  const ChooseAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'G-Chat',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      fontWeight: FontWeight.w200),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Choose your Avatar',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.w200),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Coral wants you to be able to discuss anything and everything about your wellness, your life and your aspiration with our beautiful women in the reef!',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w300, wordSpacing: 2),
              ),
              const SizedBox(
                height: 30,
              ),
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
              const SizedBox(
                height: 30,
              ),
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
                height: 30,
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
                height: 60,
              ),
              GestureDetector
              ( onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChooseBackgroundAvatar()));
                    },
                child: MyButtons(ontap: () {}, text: 'Continue'))
            ],
          ),
        ),
      ),
    );
  }
}

class avatar_container extends StatelessWidget {
  final String image;
  const avatar_container({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromARGB(255, 250, 226, 254),
      ),
      child: Center(
        child: Image(
          image: AssetImage(image),
          height: 70,
        ),
      ),
    );
  }
}
