import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenleaf_project/DietTracker/protein.dart';
import 'package:greenleaf_project/const.dart';

class Favouritetab extends StatelessWidget {
  const Favouritetab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Protein()));
            },
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                  width: 125,
                  height: 80,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/beef.jpg'),
                        fit: BoxFit.cover),
                    color: const Color(0xFF6A0D6A),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Beef (Regular cooked)',
                      style: GoogleFonts.manrope(fontSize: 14),
                    ),
                    Row(
                      children: [
                        Text(
                          '251',
                          style: GoogleFonts.manrope(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: deepPurpe),
                        ),
                        const SizedBox(width: 5,),
                         Text(
                          'kcal',
                          style: GoogleFonts.manrope(
                              fontSize: 16,
                              
                              color: deepPurpe),
                        ),
                        const SizedBox(width: 5,),
                        const Icon(Icons.water_drop, color: deepPurpe,)
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 5,),
          const Divider(thickness: 0.5,)
        ],
      ),
    );
  }
}
