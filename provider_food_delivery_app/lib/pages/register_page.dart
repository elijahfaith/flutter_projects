import 'package:flutter/material.dart';
import 'package:provider_food_delivery_app/component/my_button.dart';
import 'package:provider_food_delivery_app/component/my_textfield.dart';

class RegisterPage extends StatefulWidget {
   final Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
   final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
   final TextEditingController confirmPasswordController = TextEditingController();

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
            Text("Let's create an account for you",
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
             MyTextfield(
                controller: confirmPasswordController,
                hintText: "Confirm password",
                obscureText: true),
            const SizedBox(
              height: 25,
            ),
            MyButton(
              text: "Sign up",
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already had an account?",
                    style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.inversePrimary)),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Login here",
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