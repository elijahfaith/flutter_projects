import 'package:flutter/material.dart';
import 'package:greenleaf_project/profile_account/account_setting.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: () { Navigator.pop(
                            context
                            );}, icon: const Icon(Icons.close)),
        title: const Text(
          'Account',
          style: TextStyle(
              fontWeight: FontWeight.w200, fontStyle: FontStyle.italic), 
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(child: acoount_setting()),
    );
  }
}
