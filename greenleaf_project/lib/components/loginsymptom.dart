import 'package:flutter/material.dart';
import 'package:greenleaf_project/main_pages/login_symptoms.dart';

class LoginSymptoms extends StatelessWidget {
  const LoginSymptoms({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      margin: const EdgeInsets.only(left: 30, right: 30),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 210, 229, 254),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Log in Symptoms',
            style: TextStyle(
                color: Colors.purple,
                fontSize: 18,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w300),
          ),
          RawMaterialButton(
            constraints: const BoxConstraints.tightFor(width: 30, height: 30),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LoginSymptomsPage()));
            },
            shape: const CircleBorder(),
            fillColor: Colors.purple,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
