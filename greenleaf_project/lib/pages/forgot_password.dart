import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/components/logo.dart';
import 'package:greenleaf_project/components/text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future<void> _initializeFirebase() async {
    await Firebase.initializeApp();
  }

  Future<void> passwordReset() async {
    final email = _emailController.text.trim();
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      _showDialog('Password reset link sent to your email address!');
    } on FirebaseAuthException catch (e) {
      String message;
      if (e.code == 'user-not-found') {
        message ='Email not found for this account.';
      } else {
        e.message ?? 'An error occurred.';
      }
    }
  }
  void _showDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(message),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/logoicon.png'),
              const SizedBox(height: 15),
              const Text(
                'Reset Password',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              const Text(
                'Please enter your email address to request a password reset.',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey),
                  
                  hintText: 'Enter your email',
                  
                ),
                 validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email address';
                        }
                        return null;
                      },
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: passwordReset,
                child: const MyButtons(
                  ontap:
                      null, // This seems redundant; onTap is handled directly.
                  text: 'Send New Password',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
