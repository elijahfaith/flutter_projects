import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/components/googlefacebook.dart';
import 'package:greenleaf_project/main_pages/page_intro.dart';
import 'package:greenleaf_project/pages/forgot_password.dart';
import 'package:greenleaf_project/pages/register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool _obscurePassword = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    _initializeFirebase();
  }

  Future<void> _initializeFirebase() async {
    await Firebase.initializeApp();
  }

  Future<void> userLogin() async {
    if (_formKey.currentState!.validate()) {
      try {
        showDialog(
          context: context,
          builder: (context) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        );
        String email = _emailController.text.trim();
        String password = _passwordController.text.trim();

        // Perform Firebase Authentication
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);

        Navigator.pop(context);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>  LandingPage()),
        );
      } on FirebaseAuthException catch (e) {
        Navigator.pop(context);
        String errorMessage = '';

        if (e.code == 'user-not-found') {
          errorMessage = 'No user found for that email.';
        } else {
          errorMessage = 'Invalid details.';
        }
        // Show error dialog
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(
                errorMessage,
                style: const TextStyle(fontSize: 16),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom: 30),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/logoicon.png'),
                    const SizedBox(height: 15),
                    const Text(
                      'Welcome to',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'TnT Care',
                      style: TextStyle(
                          fontSize: 33,
                          color: Colors.purple,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 50),
                    const Text('Username or Email'),
                    const SizedBox(height: 10),
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
                        hintText: 'Username or Email',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                            .hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        const Text('Password'),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ForgotPassword(),
                              ),
                            );
                          },
                          child: Text('Forgot Password?',
                              style: TextStyle(color: Colors.purple[400])),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // Password field with visibility toggle
                    TextFormField(
                      controller: _passwordController,
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple)),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Password',
                        hintStyle: const TextStyle(color: Colors.grey),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 50),
                    GestureDetector(
                      onTap: userLogin,
                      child: MyButtons(
                        ontap: userLogin,
                        text: 'Sign in',
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Row(
                      children: [
                        Expanded(
                          child: Divider(thickness: 0.5, color: Colors.black),
                        ),
                        Text('Or'),
                        Expanded(
                          child: Divider(thickness: 0.5, color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Center(child: Text('Or continue with')),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GoogleFacebook(imagepath: 'assets/images/facebook.png'),
                  SizedBox(width: 10),
                  GoogleFacebook(imagepath: 'assets/images/google.png'),
                  SizedBox(width: 10),
                  GoogleFacebook(imagepath: 'assets/images/apple.png'),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                      );
                    },
                    child: Text('Register',
                        style: TextStyle(color: Colors.purple[400])),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
