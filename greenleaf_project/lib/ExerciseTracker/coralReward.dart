import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenleaf_project/const.dart';

class Coralreward extends StatelessWidget {
  const Coralreward({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My coral rewards',
          style: TextStyle(
              fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/Group447.png'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'You have earned',
            style:
                GoogleFonts.manrope(fontStyle: FontStyle.italic, fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '5',
            style: GoogleFonts.manrope(fontSize: 60),
          ),
          Text(
            'Coral rewards',
            style:
                GoogleFonts.manrope(fontStyle: FontStyle.italic, fontSize: 16),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, top: 10),
            height: 40,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: lightgrey,
            ),
            child: const Text('AUGUST, 2024', style: TextStyle(color: Colors.grey),),
          )
        ],
      ),
    );
  }
}
