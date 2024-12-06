import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutCoralreef extends StatelessWidget {
  const AboutCoralreef({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Coral Reef',
          style: TextStyle(
              fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
        child: Container(
            child: Column(
          children: [
            Text(
              'Coral Reef is an organization with several expert in different field of Maternity and Child Health, cutting across every aspect of health and wellness in period and pregnancy.',
              style: GoogleFonts.manrope(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            const Spacer(),
             const Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Icon(Icons.copyright_outlined, color: Colors.blueGrey,),
                SizedBox(width: 5,),
                Text('Coral Reef 2024', style: TextStyle(color: Colors.blueGrey),)
              ]),
            
          ],
        )),
      ),
    );
  }
}
