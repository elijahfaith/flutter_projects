import 'package:flutter/material.dart';
import 'package:mobile_app/screens/bottomnav.dart';
import 'package:mobile_app/screens/login.dart';
import 'package:mobile_app/services/shared_pref.dart';
import 'package:mobile_app/widget/support_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobile_app/services/database.dart';
import 'package:random_string/random_string.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

String? name, email, password;

TextEditingController namecontroller = TextEditingController();
TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();

final _formKey = GlobalKey<FormState>();

registration()async{
  if (password!=null && name!=null && email!=null){
    try{
      UserCredential userCredential =await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email!, password: password!);
      
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.redAccent,
        content: Text("Registration Successful", style: TextStyle(fontSize: 18.0 ),)));
        String Id= randomAlphaNumeric(10);
       await SharedPreferenceHelper().saveEmailId(emailcontroller.text);
            await SharedPreferenceHelper().saveUserId(Id);
            await SharedPreferenceHelper().saveNameId(namecontroller.text);
            await SharedPreferenceHelper().saveImageId("images/person-man.webp");
        Map<String, dynamic>userInfoMap={
          "Name": namecontroller.text,
          "Email": emailcontroller.text,
          "Id": Id,
          "Image": "images/person-man.webp"
    };
    await DatabaseMethods().addUserDetails(userInfoMap, Id);
        Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNav()));
    } on FirebaseException catch(e){
      if(e.code=='weak-password'){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.redAccent,
        content: Text("Password Provided is too weak", style: TextStyle(fontSize: 18.0 ),)));
      }
      else if(e.code=='email-already-in-use') {
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.redAccent,
        content: Text("Account Already Exist", style: TextStyle(fontSize: 18.0 ),)));
    
      }
    }
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
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
                height: 30,
              ),
              Center(
                child: Text(
                  "Sign Up",
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
                      "Name",
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
                          validator: (value){
                            if (value==null||value.isEmpty){
                              return 'Please Enter your Name';
                            }
                            return null;
                          },
                          controller: namecontroller,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Name",
                          ),
                        )),
                    SizedBox(
                      height: 20.0,
                    ),
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
                          validator:  (value){
                            if (value==null||value.isEmpty){
                              return 'Please Enter your Email';
                            }
                            return null;
                          },
                          controller: emailcontroller,
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
                          validator: (value){
                            if (value==null||value.isEmpty){
                              return 'Please Enter your Password';
                            }
                            return null;
                          },
                          obscureText: true,
                          controller: passwordcontroller,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            
                            hintText: "Enter Password",
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: (){
                        if(_formKey.currentState!.validate()){
                          setState(() {
                            name = namecontroller.text;
                            email = emailcontroller.text;
                            password = passwordcontroller.text;
                          });
                        }
                        registration();
                      },
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width/2,
                          padding: EdgeInsets.all(18),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(child: Text("SIGN UP", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already had an account?", style: AppWidget.lightTextFieldStyle(),),
                        SizedBox(width: 5,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));
                          },
                          child: Text(
                            "Sign In",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}