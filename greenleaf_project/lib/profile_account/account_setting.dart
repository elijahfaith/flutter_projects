import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenleaf_project/profile_account/about_coralreef.dart';
import 'package:greenleaf_project/profile_account/edit_profile.dart';
import 'package:greenleaf_project/profile_account/help.dart';
import 'package:greenleaf_project/profile_account/period_setting.dart';
import 'package:greenleaf_project/profile_account/reminder.dart';
import 'package:greenleaf_project/profile_account/setting.dart';

class acoount_setting extends StatelessWidget {
  const acoount_setting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 20),
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
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Preferred goal',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w200,
                fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 10),
          const Text('Some options should be placed here'),
          const SizedBox(height: 20),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(height: 15),
          account_setting_options(
            text: 'Contact info',
            icon: Icons.person_2, OnTap:  (){
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  const EditProfile()));
              },
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          const account_setting_options(
              icon: Icons.graphic_eq, text: 'Graphs and report', OnTap: null,),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          account_setting_options(icon: Icons.settings, text: 'Settings', OnTap: (){
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  Setting()));
              },),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          account_setting_options(
              icon: Icons.notification_add_outlined, text: 'Reminders', OnTap: (){
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  const Reminder()));
              },),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          account_setting_options(
              icon: Icons.notification_add_outlined,
              text: 'Cycles and Ovulation', OnTap: (){
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  PeriodSetting()));
              },),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          account_setting_options(
              icon: Icons.help_outline_outlined, text: 'Help', OnTap: (){
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  const Help()));
              },),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          const account_setting_options(
              icon: Icons.help_outline_outlined, text: 'Contact support', OnTap: null),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          account_setting_options(
              icon: Icons.info_outline, text: 'About Coral Reef', OnTap: (){
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  const AboutCoralreef()));
              },),
        ],
      ),
    );
  }
}

class account_setting_options extends StatelessWidget {
  final String text;
   final IconData icon;
   final  OnTap;

  const account_setting_options(
      {super.key, required this.icon, required this.text, required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 27,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: GoogleFonts.manrope(fontSize: 16),
        ),
        const Spacer(),
        GestureDetector(onTap: OnTap,
          child: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
