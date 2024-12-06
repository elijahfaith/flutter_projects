import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/login_button.dart';
import 'package:google_fonts/google_fonts.dart';

class help_content extends StatelessWidget {
  const help_content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/coralreeflogo.png',
          ),
          const SizedBox(height: 20),
          const Searchbutton(hintText: 'What will you like to find',),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    'Account & Data',
                    style: GoogleFonts.manrope(fontSize: 16),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Using Coral',
                    style: GoogleFonts.manrope(fontSize: 16),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'General Questions',
                    style: GoogleFonts.manrope(fontSize: 16),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          const Spacer(),
          const Text(
            'Didn\'t find the answer?',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
        
          ),
          const SizedBox(height: 10,),
          LoginButton(ontap: (){}, text: 'Contact us')
        ],
      ),
    );
  }
}

class Searchbutton extends StatelessWidget {
  final String hintText;
  const Searchbutton({
    super.key, required this.hintText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 238, 238, 238),
          borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: Color.fromARGB(255, 185, 185, 185),
            size: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: const TextStyle(color: Colors.grey)),
          ))
        ],
      ),
    );
  }
}
