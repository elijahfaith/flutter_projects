import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_project/CRUD%20FIREBASE/crude_operation.dart';
import 'package:flutter_firebase_project/Firebase_Auth/Textfield_inpute.dart';
import 'package:flutter_firebase_project/Firebase_Auth/button.dart';
import 'package:flutter_firebase_project/Firebase_Auth/sign_up.dart';
import 'package:flutter_firebase_project/store_data_infofirebase.dart';

class FirebaseLogin extends StatefulWidget {
  const FirebaseLogin({super.key});

  @override
  State<FirebaseLogin> createState() => _FirebaseLoginState();
}

class _FirebaseLoginState extends State<FirebaseLogin> {
  String email = '', password = '';
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _initializeFirebase();
  }

  Future<void> _initializeFirebase() async {
    await Firebase.initializeApp();
  }

  Future logIn() async {
    try {
      showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      );
      // Perform Firebase Authentication
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailcontroller.text.trim(), password: passwordcontroller.text.trim());
      Navigator.pop(context);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => CrudeOperation()),
      );
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      String errorMessage = '';

      if (e.code == 'user-not-found') {
        errorMessage = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        errorMessage = 'Invalid password, please enter the correct details.';
      } else {
        errorMessage = 'An error occurred. Please try again.';
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

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height / 2.5,
                    width: double.infinity,
                    child: Hero(
                        tag: 'tage-1', child: Image.asset("images/login.jpg")),
                  ),
                  TextfieldInpute(
                    textEditingController: emailcontroller,
                    hintText: 'Enter your email',
                    labelText: 'Email',
                    icon: Icons.email,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Email';
                      }
                      return null;
                    },
                  ),
                  TextfieldInpute(
                    textEditingController: passwordcontroller,
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    icon: Icons.lock,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Password';
                      }
                      return null;
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forget Password",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ),
                  ),
                  MyButton(
                    text: "Login",
                    onTab: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          email = emailcontroller.text;
                          password = passwordcontroller.text;
                        });
                        logIn();
                      }
                    },
                  ),
                  SizedBox(
                    height: height / 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?",
                          style: TextStyle(fontSize: 16)),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SignUp()));
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
