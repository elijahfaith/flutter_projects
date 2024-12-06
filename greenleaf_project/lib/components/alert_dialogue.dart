import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:greenleaf_project/components/button.dart';


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
                      Navigator.pop(context);
                    },
                    child: MyButtons(ontap: () {}, text: 'Continue'))
              ],
            ),
          ));
}
