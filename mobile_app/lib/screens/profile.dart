import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mobile_app/screens/onboarding_page.dart';
import 'package:mobile_app/services/Auth.dart';
import 'package:mobile_app/services/shared_pref.dart';
import 'package:mobile_app/widget/support_widget.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? image, name, email;
  final ImagePicker _picker = ImagePicker();
  File? selectedImage;

  getthesharedpref() async {
    name = await SharedPreferenceHelper().getUserName();
    image = await SharedPreferenceHelper().getUserImage();
    email = await SharedPreferenceHelper().getUserEmail();
    setState(() {});
  }

  @override
  void initState() {
    getthesharedpref();
    super.initState();
  }

  Future getImage() async {
    var image = await _picker.pickImage(source: ImageSource.gallery);
    selectedImage = File(image!.path);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xfff2f2f2),
        title: Text(
          "Profile",
          style: AppWidget.boldTextFieldStyle(),
        ),
        centerTitle: true,
      ),
      body: name == null
          ? Center(
              child: CircularProgressIndicator(
              color: Colors.black,
            ))
          : Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      "images/person-man.webp",
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10.0, left: 10.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 3.0,
                      child: Container(
                        padding: EdgeInsets.only(top: 20, bottom: 20, left: 10),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person_2_outlined,
                              size: 40,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name",
                                  style: AppWidget.lightTextFieldStyle(),
                                ),
                                Text(
                                  name!,
                                  style: AppWidget.semiboldTextFieldStyle(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                   Container(
                    margin: EdgeInsets.only(right: 10.0, left: 10.0, ),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 3.0,
                      child: Container(
                        padding: EdgeInsets.only(top: 20, bottom: 20, left: 10),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.mail_outline_sharp,
                              size: 40,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Email",
                                  style: AppWidget.lightTextFieldStyle(),
                                ),
                                Text(
                                  email!,
                                  style: AppWidget.semiboldTextFieldStyle(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:20.0),
                  GestureDetector(
                    onTap: ()async{
                      await AuthMethods().signOut().then((value){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingPage()));
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 30.0, left: 30.0, ),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 3.0,
                        child: Container(
                          padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.logout_outlined,
                                size: 35,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Log Out",
                                style: AppWidget.semiboldTextFieldStyle(),
                              ),
                              Spacer(),
                                                             Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                   SizedBox(height:20.0),
                  GestureDetector(
                     onTap: ()async{
                      await AuthMethods().deleteUser().then((value){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingPage()));
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 30.0, left: 30.0, ),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 3.0,
                        child: Container(
                          padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.delete,
                                size: 35,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Delete Account",
                                style: AppWidget.semiboldTextFieldStyle(),
                              ),
                              Spacer(),
                                                             Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
