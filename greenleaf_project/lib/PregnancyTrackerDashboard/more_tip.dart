import 'package:flutter/material.dart';

class MoreTip extends StatelessWidget {
  const MoreTip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 250, 226, 254),
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/images/medimage.png'),
                    height: 70,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Take prenatal vitamins',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 22,
                    fontWeight: FontWeight.w200),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Ask your doctor which prenatal vitamins are best for you and your baby, particularly how much folic and vitamin you will need. Prenatal Vitamin ensure you are giving your baby the important vitamins and nutrient it needs, like folic acid, iron, calcium and DHA. The vitamin plays important roles in bone, vision and brain development.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
