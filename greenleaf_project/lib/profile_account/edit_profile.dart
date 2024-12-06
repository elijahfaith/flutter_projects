import 'package:flutter/material.dart';
import 'package:greenleaf_project/profile_account/edit_profile_widget.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.w300),
        ),
        centerTitle: true,
      ),
      body: const EditProfileWidget(),
    );
  }
}
