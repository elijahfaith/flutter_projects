import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenleaf_project/components/button.dart';

class PeriodSetting extends StatefulWidget {
  const PeriodSetting({super.key});

  @override
  State<PeriodSetting> createState() => _PeriodSettingState();
}

class _PeriodSettingState extends State<PeriodSetting> {
  bool _light = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cycles and Ovulation',
          style: TextStyle(
              fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, bottom: 20, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Cycle length',
                  style: GoogleFonts.manrope(fontSize: 16),
                ),
                const Spacer(),
                const Text(
                  '28',
                  style: TextStyle(color: Colors.purple, fontSize: 18),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    _showDialog(context);
                  },
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Period length',
                  style: GoogleFonts.manrope(fontSize: 16),
                ),
                const Spacer(),
                const Text(
                  '28',
                  style: TextStyle(color: Colors.purple, fontSize: 18),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'This app makes forecasts dependent on your cycle and period length settings. Be that as it may, on the off chance that you routinely log your period in the app, forecasts will be founded on the logged information',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Chance of getting pregnant',
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
                  },
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'If turned OFF only ovulation will be displayed',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}

_showDialog(BuildContext context) {
  showDialog(
      barrierColor: Colors.black.withOpacity(0.1),
      barrierDismissible: true,
      context: context,
      builder: (context) => CupertinoAlertDialog(
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text('Cycle length'),
                    Spacer(),
                    Icon(Icons.close)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                    child: Text(
                  '28',
                  style: TextStyle(
                      fontSize: 38,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold),
                )),
                const Divider(thickness: 1,),
                const Row(
                  children: [
                    Text(
                      'Date',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Spacer(),
                    Text('24 Feb, 2021, 08:36', style: TextStyle(color: Colors.purple),),
                  ],
                ),
                const Divider(thickness: 1,),
                const SizedBox(height: 50),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: MyButtons(ontap: () {}, text: 'Save'))
              ],
            ),
          ));
}
