import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_project/Firebase_Auth/Firebase_login.dart';
import 'package:flutter_firebase_project/Firebase_Auth/Textfield_inpute.dart';
import 'package:flutter_firebase_project/Firebase_Auth/button.dart';
import 'package:flutter_firebase_project/store_data_infofirebase.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String email = '', password = '', username = '';
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    usernamecontroller.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  signUp() async {
    if (password != null && username != null && email != null) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailcontroller.text.trim(),
                password: passwordcontroller.text.trim());

        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Registered Successfully")));
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => StoreDataInfofirebase()));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Password is weak")));
        } else if (e.code == 'email-already-in-use') {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("The account already exists for that email")));
        }
      }
      setState(() {
        usernamecontroller.clear();
        emailcontroller.clear();
        passwordcontroller.clear();
      });
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
                      tag: 'tage-1', child: Image.asset("images/signup.jpeg")),
                ),
                TextfieldInpute(
                  textEditingController: usernamecontroller,
                  hintText: 'Enter your Username',
                  labelText: 'Username',
                  icon: Icons.person_2_outlined,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Username';
                    }
                    return null;
                  },
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
                MyButton(
                    text: "Sign Up",
                    onTab: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          username = usernamecontroller.text;
                          email = emailcontroller.text;
                          password = passwordcontroller.text;
                        });
                      }
                      signUp();
                    }),
                SizedBox(
                  height: height / 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already had an acoount?",
                        style: TextStyle(fontSize: 16)),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FirebaseLogin()));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
