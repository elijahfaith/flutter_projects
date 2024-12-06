import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/profile_account/account_setting.dart';

class AccountOption extends StatelessWidget {
  const AccountOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Container(
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('What would you like to Analyze,',
                  style: GoogleFonts.manrope(
                      fontSize: 20, fontStyle: FontStyle.italic)), 
              const SizedBox(height: 20),
              const account_setting_options(OnTap: null, icon: Icons.lock_clock, text: 'Cycle length',),
              const SizedBox(height: 5,),
              const Divider(thickness: 0.5,),
              const SizedBox(height: 5,),
              const account_setting_options(OnTap: null, icon: Icons.water_drop, text: 'Period length and Integrity',),
              const SizedBox(height: 5,),
              const Divider(thickness: 0.5,),
              const SizedBox(height: 5,),
              const account_setting_options(OnTap: null, icon: Icons.graphic_eq_outlined, text: 'Graphs of Event',),
              const SizedBox(height: 5,),
              const Divider(thickness: 0.5,),
              const SizedBox(height: 100,),
              const MyButtons(ontap: null, text: 'Report to an expert'),

            ],
          ),
        ),
      ),
    );
  }
}
