import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/wallet/walletpage5.dart';
import 'package:country_picker/country_picker.dart';

class Walletpage4 extends StatefulWidget {
  const Walletpage4({super.key});

  @override
  _Walletpage4State createState() => _Walletpage4State();
}

class _Walletpage4State extends State<Walletpage4> {
  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              const Text(
                'What country?',
                style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w200),
              ),
              const SizedBox(height: 30
            ),
              GestureDetector(
                onTap: () {
                  showCountryPicker(
                    context: context,
                    showPhoneCode: false, 
                    onSelect: (Country country) {
                      setState(() {
                        selectedCountry = country.name;
                      });
                    },
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        selectedCountry ?? 'Select your country',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  if (selectedCountry != null) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Walletpage5()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please select a country before continuing'),
                      ),
                    );
                  }
                },
                child: MyButtons(
                  ontap: () {},
                  text: 'Continue',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
