import 'package:flutter/material.dart';
import 'package:provider_food_delivery_app/component/my_button.dart';
import 'package:provider_food_delivery_app/component/my_textfield.dart';
import 'package:provider_food_delivery_app/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;

  LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

// text editing controller


 void login(){
  /* 
  
  
  authentication

  */
  // navigate to homepage
   Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));

 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            Text("Food Delivery App",
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary)),
            const SizedBox(
              height: 25,
            ),
            MyTextfield(
                controller: emailController,
                hintText: "Email",
                obscureText: false),
            const SizedBox(
              height: 25,
            ),
            MyTextfield(
                controller: passwordController,
                hintText: "Password",
                obscureText: true),
            const SizedBox(
              height: 25,
            ),
            MyButton(
              text: "Sign In",
              onTap: login
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?",
                    style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.inversePrimary)),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Register now?",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.inversePrimary)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
