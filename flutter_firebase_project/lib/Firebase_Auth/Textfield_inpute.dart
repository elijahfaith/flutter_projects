import 'package:flutter/material.dart';

class TextfieldInpute extends StatelessWidget {
   TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final String labelText;
  final String? Function(String?) validator;
   IconData icon;
   TextfieldInpute({super.key, required this.textEditingController,  this.isPass = false, required this.hintText, required this.labelText, required this.icon, required this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator:  validator,
        obscureText: isPass,
        controller: textEditingController,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            icon,
            color: Colors.black45,
          ),
          filled: true,
          fillColor: const Color(0xFFedf0f8),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black45),
          labelText: labelText,
                    focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.blue, width: 2)
              ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20),
              
              ),
        ),
      ),
    );
  }
}
