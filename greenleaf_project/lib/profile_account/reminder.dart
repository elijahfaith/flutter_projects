import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenleaf_project/profile_account/setting.dart';

class Reminder extends StatefulWidget {
  const Reminder({super.key});

  @override
  State<Reminder> createState() => _ReminderState();
}

bool _light = true;
bool _reminder = true;

class _ReminderState extends State<Reminder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reminder',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Reminder',
                  style: GoogleFonts.manrope(fontSize: 16),
                ),
                Row(
                  children: [
                    Text(
                      'Set personal reminder to alert\nyou of things',
                      style:
                          GoogleFonts.manrope(fontSize: 14, color: Colors.grey),
                    ),
                    const Spacer(),
                    CupertinoSwitch(
                        activeColor: Colors.purple,
                        value: _light,
                        onChanged: (bool value) {
                          setState(() {
                            _light = value;
                          });
                        }),
                  ],
                ),
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Weight',
                      style: GoogleFonts.manrope(fontSize: 16),
                    ),
                    Text(
                      'Remind me to weight myself',
                      style:
                          GoogleFonts.manrope(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
                const Spacer(),
                const Text(
                  '9:00am',
                  style: TextStyle(color: Colors.purple, fontSize: 16),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                )
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sleep',
                      style: GoogleFonts.manrope(fontSize: 16),
                    ),
                    Text(
                      'Remind me minutes before my sleep',
                      style:
                          GoogleFonts.manrope(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
                const Spacer(),
                const Text(
                  '11:30pm',
                  style: TextStyle(color: Colors.purple, fontSize: 16),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                )
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Water',
                      style: GoogleFonts.manrope(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Remind me to drink water',
                      style:
                          GoogleFonts.manrope(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                const Spacer(),
                CupertinoSwitch(
                    activeColor: Colors.purple,
                    value: _reminder,
                    onChanged: (bool value) {
                      setState(() {
                        _reminder = value;
                      });
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
