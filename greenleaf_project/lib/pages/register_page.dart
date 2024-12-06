import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/components/googlefacebook.dart';
import 'package:greenleaf_project/main_pages/page_intro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obscurePassword = true;
  bool _obscurePassword2 = true;
  bool isChecked = true;
  bool isnotChecked = false;

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _register() async {
    if (_formKey.currentState?.validate() ?? false) {
      try {
        showDialog(
          context: context,
          builder: (context) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        );
        // Register the user with Firebase
        UserCredential userCredential =
            await _auth.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );

        await addUserDetails(userCredential.user?.uid);
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Registration successful'),
            duration: Duration(seconds: 5),
          ),
        );
        await Future.delayed(const Duration(seconds: 3));
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LandingPage()),
        );
      } on FirebaseAuthException catch (e) {
        Navigator.pop(context);
        String message;
        if (e.code == 'weak-password') {
          message = 'The password provided is too weak.';
        } else if (e.code == 'email-already-in-use') {
          message = 'The account already exists for that email.';
        } else {
          message = 'Failed to register: ${e.message}';
        }
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(
                message,
                style: const TextStyle(fontSize: 16),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context); // Close the error dialog
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

  Future<void> addUserDetails(String? userId) async {
    if (userId != null) {
      await FirebaseFirestore.instance.collection('users').doc(userId).set({
        'username': _usernameController.text.trim(),
        'email': _emailController.text.trim(),
        'created_at': Timestamp.now(),
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/logoicon.png'),
                    const SizedBox(height: 10),
                    const Text(
                      'Create a new\naccount',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    const Text('Username'),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _usernameController,
                      obscureText: false,
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple)),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Username',
                          hintStyle: TextStyle(color: Colors.grey)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    const Text('Email'),
                    const SizedBox(height: 5),
                    TextFormField(
                      controller: _emailController,
                      obscureText: false,
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple)),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Enter your email address',
                          hintStyle: TextStyle(color: Colors.grey)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email address';
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    const Text('Password'),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
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
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple)),
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: const TextStyle(color: Colors.grey)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    const Text('Confirm Password'),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _confirmPasswordController,
                      obscureText: _obscurePassword2,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword2
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword2 = !_obscurePassword2;
                              });
                            },
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple)),
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: const TextStyle(color: Colors.grey)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please confirm your password';
                        }
                        if (value != _passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                    Row(children: [
                      Checkbox(
                          value: isnotChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isnotChecked = value!;
                            });
                          }),
                      const Text('I am over'),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'the age of 18',
                        style: TextStyle(color: Colors.red),
                      ),
                    ]),
                    Row(
                      children: [
                        Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            }),
                        const Text('I agree with'),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'the Terms and Conditions',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: _register,
                      child: const MyButtons(
                        ontap: null,
                        text: 'Sign in',
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.black,
                          ),
                        ),
                        Text('Or'),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(child: Text('Or sign up with')),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GoogleFacebook(imagepath: 'assets/images/google.png'),
                  SizedBox(width: 10),
                  GoogleFacebook(imagepath: 'assets/images/facebook.png'),
                  SizedBox(width: 10),
                  GoogleFacebook(imagepath: 'assets/images/apple.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
