import 'package:flutter/material.dart';
import 'package:mobile_app/screens/bottomnav.dart';
import 'package:mobile_app/screens/homepage.dart';
import 'package:mobile_app/screens/signup.dart';
import 'package:mobile_app/widget/support_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String? email = "", password = "";

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initializeFirebase();
  }

  Future<void> _initializeFirebase() async {
    await Firebase.initializeApp();
  }

  final _formKey = GlobalKey<FormState>();

  userLogin() async {
    if (email!.isNotEmpty && password!.isNotEmpty) {
      try {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email!, password: password!);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              "Successful",
              style: TextStyle(fontSize: 18.0),
            )));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BottomNav()));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                "No User Found for this Email",
                style: TextStyle(fontSize: 18.0),
              )));
        } else if (e.code == 'wrong-password') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                "wrong password, please input the correct password",
                style: TextStyle(fontSize: 18.0),
              )));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 80.0, left: 20.0, right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                "VikeMall",
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "Sign In",
                  style: AppWidget.boldTextFieldStyle(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Please enter your details to \n                 continue",
                  style: AppWidget.lightTextFieldStyle(),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: AppWidget.semiboldTextFieldStyle(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                            color: Color(0xFFF4f5f9),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          controller: emailcontroller,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter your Email';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter Email",
                          ),
                        )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Password",
                      style: AppWidget.semiboldTextFieldStyle(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                            color: Color(0xFFF4f5f9),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          obscureText: true,
                          controller: passwordcontroller,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter your Password';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter Password",
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            email = emailcontroller.text;
                            password = passwordcontroller.text;
                          });
                          userLogin();
                        }
                      },
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          padding: EdgeInsets.all(18),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            "LOGIN",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dont have an account?",
                          style: AppWidget.lightTextFieldStyle(),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
