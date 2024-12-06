import 'package:flutter/material.dart';
import 'package:greenleaf_project/const.dart';

class Insightchart extends StatelessWidget {
  const Insightchart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:4.0),
      child: Container(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                height: 300,
                width: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: backgroundcard),
                child: Column(
                  children: [
                                     Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          '70',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: deepPurpe),
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          'kg',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: deepPurpe),
                        ),const Spacer(),
                         Image.asset(
                          'assets/images/Shape.png',
                          scale: 2,
                        ),
                        const Spacer(),
                        const Text(
                          '0.0',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: deepPurpe),
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          'kg',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: deepPurpe),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Current Weight',
                          style: TextStyle(color: deepPurpe),
                        ),
                        Spacer(),
                        Text(
                          'New Weight',
                          style: TextStyle(color: deepPurpe),
                        )
                      ],
                    ),
                  ],
                ),
              ),
    );

  }
}