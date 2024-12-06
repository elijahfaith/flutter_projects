import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final ImagePicker _imagePicker = ImagePicker();
  String? imageUrl;

  Future<void> pickImage() async {
    try {
      XFile? res = await _imagePicker.pickImage(source: ImageSource.gallery);
      if (res != null) {
        await uploadImageToFirebase(File(res.path));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text(
            "Failed to pick image: $e",
            style: TextStyle(fontSize: 18.0),
          )));
    }
  }

  Future<void> uploadImageToFirebase(File image) async {
    try {
      Reference reference = FirebaseStorage.instance
          .ref()  
          .child("images/${DateTime.now().microsecondsSinceEpoch}.png");
      await reference.putFile(image).whenComplete(() {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.green,
            duration: Duration(seconds: 2),
            content: Text(
              "Uploaded Successfully",
              style: TextStyle(fontSize: 18.0),
            )));
      });
       imageUrl = await reference.getDownloadURL();
    } catch (e) {
  
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text(
            "Failed to upload image: $e",
            style: TextStyle(fontSize: 18.0),
          )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: Center(
          child: Padding(
              padding: EdgeInsets.all(15),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Stack(children: [
                    Center(
                      child: CircleAvatar(
                        radius: 100,
                        child: imageUrl==null? Icon(
                          Icons.person,
                          size: 200,
                          color: Colors.grey,
                        ) : ClipOval(
                          
                          child: Image.network(imageUrl!, fit: BoxFit.cover,))
                      ),
                    ),
                    Positioned(
                      right: 120,
                      top: 7,
                      child: GestureDetector(
                        onTap: () {
                          pickImage();
                        },
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    // controller: controller,

                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.person_2_outlined),
                      hintText: "Username",
                      labelText: "Username",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Colors.black26, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    // controller: controller,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      hintText: "Passwrd",
                      labelText: "Password",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Colors.black26, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2)),
                    ),
                  ),
                ],
              ))),
    );
  }
}
