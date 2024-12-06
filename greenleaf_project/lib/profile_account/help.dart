import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/login_button.dart';
import 'package:greenleaf_project/profile_account/help_content.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Help',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: const help_content(),
    );
  }
}
