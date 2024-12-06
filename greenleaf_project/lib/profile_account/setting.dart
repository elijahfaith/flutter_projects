import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool _light = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w300),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 30),
        child: Column(
          children: [
            const settings_option(
              label: 'Current weight',
              sublabel: '70kg',
              OnTap: null,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            const settings_option(
              label: 'Weight goal',
              sublabel: '60kg',
              OnTap: null,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            const settings_option(
              label: 'Height',
              sublabel: '172cm',
              OnTap: null,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            const settings_option(
              label: 'Daily Calories',
              sublabel: '2,230kcal',
              OnTap: null,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            const settings_option(
              label: 'Step goals',
              sublabel: '6hrs',
              OnTap: null,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            const settings_option(
              label: 'Daily water intake',
              sublabel: '10 glasses',
              OnTap: null,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            const settings_option(
              label: 'Daily vitamin intake',
              sublabel: '4',
              OnTap: null,
            ),
            const Divider(
              thickness: 1,
            ),
            Row(
              children: [
                Text(
                  'Units',
                  style: GoogleFonts.manrope(fontSize: 16),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.purple.shade50,
                      foregroundColor: Colors.purple),
                  onPressed: () {},
                  child: const Text('Metrics'),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: const Color.fromARGB(255, 223, 223, 223),
                      foregroundColor: Colors.black),
                  onPressed: () {},
                  child: const Text('Imperial'),
                )
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            Row(
              children: [
                Text(
                  'Health insights',
                  style: GoogleFonts.manrope(fontSize: 16),
                ),
                const Spacer(),
                CupertinoSwitch(
                    activeColor: Colors.purple,
                    value: _light,
                    onChanged: (bool value) {
                      setState(() {
                        _light = value;
                      });
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}

class settings_option extends StatelessWidget {
  final String label;
  final String sublabel;
  final OnTap;
  const settings_option(
      {super.key,
      required this.OnTap,
      required this.sublabel,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: GoogleFonts.manrope(fontSize: 16),
        ),
        const Spacer(),
        Text(
          sublabel,
          style: GoogleFonts.manrope(fontSize: 16, color: Colors.purple),
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: OnTap,
          child: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
