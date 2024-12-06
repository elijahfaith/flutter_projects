import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenleaf_project/profile_account/about_coralreef.dart';
import 'package:greenleaf_project/profile_account/period_setting.dart';

class EditProfileWidget extends StatelessWidget {
  const EditProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/images/adetobi.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Dupe Coleman',
                    style: GoogleFonts.manrope(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.purpleAccent),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            buildTextField('Name', 'Dupe Coleman'),
            buildTextField('Birthdate', ' 05, November 1983'),
            buildTextField('Gender', 'Female'),
            buildTextField('Email', 'dupeoluwa@wiski.com'),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 75,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'Cancel',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
               Container(
                  height: 40,
                  width: 75,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'Save',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget buildTextField(String label, String Placeholder) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 30, left: 10, right: 10),
    child: TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(bottom: 5),
        labelText: label,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: Placeholder,
        hintStyle: const TextStyle(
            fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
