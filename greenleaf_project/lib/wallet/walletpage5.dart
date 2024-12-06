import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:greenleaf_project/PregnancyTrackerDashboard/pregnancy_tracker_dashboard.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/wallet/walletpage6.dart';

class Walletpage5 extends StatefulWidget {
  const Walletpage5({super.key});

  @override
  State<Walletpage5> createState() => _Walletpage5State();
}

class _Walletpage5State extends State<Walletpage5> {
  final List<String> _dropDownItems = [
    '',
    'Bank Verification Number',
    'International Passport',
    'National Identity Number',
    'Birth Certificate'
  ];

  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const SizedBox(
              height: 60,
            ),
            const Text(
              'Means of identification',
              style: TextStyle(
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w200),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black),
                ),
                child: DropdownButtonFormField(
                  decoration: const InputDecoration(border: InputBorder.none),
                  value: _selectedItem,
                  icon: const Icon(
                    Icons.expand_more,
                    size: 28,
                  ),
                  hint: const Text(
                    'Select an item',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                  items: _dropDownItems.map((String item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedItem = newValue;
                    });
                  },
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                _showDialog(context);
                Future.delayed(const Duration(seconds: 1), () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PregnancyTrackerDashboard()));
                });
              },
              child: MyButtons(ontap: () {}, text: 'Continue'),
            ),
          ],
        ),
      )),
    );
  }
}

_showDialog(BuildContext context) {
  showDialog(
      barrierColor: Colors.black.withOpacity(0.1),
      barrierDismissible: false,
      context: context,
      builder: (context) => CupertinoAlertDialog(
            content: Container(
              padding: const EdgeInsets.only(
                bottom: 60,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    'assets/images/Groupv.png',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Your details are correct',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Your details are set!',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ));
}
