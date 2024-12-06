import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/wallet/walletpage4.dart';
import 'package:pinput/pinput.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class WalletPage3 extends StatefulWidget {
  const WalletPage3({super.key});

  @override
  State<WalletPage3> createState() => _WalletPage3State();
}

class _WalletPage3State extends State<WalletPage3> {
  final defaultPintTheme = PinTheme(
      width: 56,
      height: 68,
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 247, 233, 249),
          border: Border.all(color: Colors.transparent)));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.arrow_back_ios),
              const SizedBox(
                height: 40,
              ),
              const Text(
                '    Check your SMS',
                style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Verify your account by entering the 4-digit code we sent to your phone number -',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const Text(
                '+234 334 732 907',
                style: TextStyle(fontSize: 17, color: Colors.purple),
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  child: Pinput(
                    obscureText: true,
                    length: 4,
                    defaultPinTheme: defaultPintTheme,
                    focusedPinTheme: defaultPintTheme.copyWith(
                        decoration: defaultPintTheme.decoration!.copyWith(
                            border: Border.all(
                                color: const Color.fromARGB(255, 247, 198, 195)))),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Resend code in '),
                          Text('00:24'),
                        ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    child: Text(
                      'Call me Instead',
                      style: GoogleFonts.nunito(fontWeight: FontWeight.w300),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              const SizedBox(height: 220),
              GestureDetector(
                  onTap: () {
                    _showDialog(context);
                  },
                  child: MyButtons(ontap: () {}, text: 'Continue'))
            ],
          ),
        ),
      )),
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
                const SizedBox(
                  height: 50,
                ),
                Image.asset('assets/images/wallet1.png'),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Verification Successful',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Verify your account by\nentering the 4 digit code',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 50),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Walletpage4()));
                    },
                    child: MyButtons(ontap: () {}, text: 'Continue'))
              ],
            ),
          ));
}
