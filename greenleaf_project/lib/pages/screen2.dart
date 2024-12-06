import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/components/login_button.dart';
import 'package:greenleaf_project/pages/register_page.dart';
import 'package:greenleaf_project/pages/welcome_page.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const SizedBox(height: 30),
              Image.asset('assets/images/Group 45.png'),
              const SizedBox(height: 13),
              const Text('Get Connected',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(height: 13),
              const Text(
                'Chat anonymously with our specialist on the particular area of interest and answers will be given according and accurately',
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 120),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()));
                },
                child: MyButtons(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()));
                  },
                  text: 'Get started',
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomePage()));
                },
                child: LoginButton(
                    ontap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WelcomePage()));
                    },
                    text: 'Login'),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
