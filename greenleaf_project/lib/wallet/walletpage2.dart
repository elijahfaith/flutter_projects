import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/wallet/walletpage3.dart';

class WalletPage2 extends StatefulWidget {
  const WalletPage2({super.key});

  @override
  State<WalletPage2> createState() => _WalletPage2State();
}

class _WalletPage2State extends State<WalletPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.arrow_back_ios),
            const SizedBox(
              height: 40,
            ),
            const Text(
              '    What is your mobile number?',
              style: TextStyle(
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w200),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'We will use to send your security alert',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 90,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 220,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(border: InputBorder.none),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 220),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WalletPage3()));
              },
              child: MyButtons(
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WalletPage3()));
                  },
                  text: 'Continue'),
            )
          ],
        ),
      )),
    );
  }
}
