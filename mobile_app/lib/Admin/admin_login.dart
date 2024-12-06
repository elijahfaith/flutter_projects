import 'package:flutter/material.dart';
import 'package:mobile_app/Admin/home_admin.dart';
import 'package:mobile_app/widget/support_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdmminLogin extends StatefulWidget {
  const AdmminLogin({super.key});

  @override
  State<AdmminLogin> createState() => _AdmminLoginState();
}

class _AdmminLoginState extends State<AdmminLogin> {
  TextEditingController usernamecontroller = TextEditingController();
TextEditingController userpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 170.0, left: 20.0, right: 20.0),
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
                  "Admin Panel",
                  style: AppWidget.boldTextFieldStyle(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
             
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Username",
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
                        controller: usernamecontroller,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Username"
                          
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
                        controller: userpasswordcontroller,
                        decoration: InputDecoration(
                          border: InputBorder.none,     
                          hintText: "Password",
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: (){
                      loginAdmin();
                    },
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width/2,
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text("LOGIN", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


  loginAdmin(){
    FirebaseFirestore.instance.collection("Admin").get().then((snapshot){
      snapshot.docs.forEach((result){
        if(result.data()['username']!=usernamecontroller.text.trim()){
           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.redAccent,
        content: Text("Your Id is not correct", style: TextStyle(fontSize: 18.0 ),))); 
        }
        else if (result.data()['password']!=userpasswordcontroller.text.trim()){
           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.redAccent,
        content: Text("Your password is not correct", style: TextStyle(fontSize: 18.0 ),)));
       
        }

        else{
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeAdmin()));
        }
        
    });
  });}
}