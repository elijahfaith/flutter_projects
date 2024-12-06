import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/components/login_button.dart';
import 'package:greenleaf_project/wallet/walletpage2.dart';

class WalletPage1 extends StatefulWidget {
  const WalletPage1({super.key});

  @override
  State<WalletPage1> createState() => _WalletPage1State();
}

class _WalletPage1State extends State<WalletPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 246, 253),
      body: SafeArea(child: Padding(padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.arrow_back_ios),
          const SizedBox(height: 40,),
          Center(child: Image.asset('assets/images/wallet1.png')),
          const SizedBox(height: 40,),
          const Text('    Secure your account', style: TextStyle(fontSize: 22, fontStyle: FontStyle.italic, fontWeight: FontWeight.w300),),
          const SizedBox(height: 10,),
          const Text('One way to keep your account secure is with\n2-step verification, which requires your phone\nnumber.', 
          style: TextStyle(fontSize: 17, ),),
         const SizedBox(height: 220),
         GestureDetector(
          onTap: (){  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  const WalletPage2()));},
           child: MyButtons(ontap: (){
            
                  
           }, text: 'Continue'),
         )

        ],
      ),)),
    );
  }
}