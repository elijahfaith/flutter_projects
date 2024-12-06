// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SeeAllData extends StatelessWidget {
  const SeeAllData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All data', style: TextStyle(fontStyle: FontStyle.italic), ),
        actions: const [Icon(Icons.notification_add_outlined), SizedBox(width: 20,)],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            height: 50, 
            width: double.infinity,
            decoration: BoxDecoration(color: Color.fromARGB(255, 235, 235, 235),),
            child: Column( crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('WEIGHT', style: GoogleFonts.manrope(color: Colors.grey),),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 20, right:20, top:20),
          child: Column(
            children: const [
              Row( crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('70 kg', style: TextStyle(fontSize: 18),),
                  Text('FEB. 24TH 2025', style: TextStyle(fontSize: 14, color: Colors.grey),)
                ],
              ),
              SizedBox(height: 5,),
              Divider(thickness: 0.5,),
              SizedBox(height: 10,),
               Row( crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('70 kg', style: TextStyle(fontSize: 18),),
                  Text('FEB. 25TH 2025', style: TextStyle(fontSize: 14, color: Colors.grey),)
                ],
              ),
              SizedBox(height: 5,),
              Divider(thickness: 0.5,),
              SizedBox(height: 10,),
               Row( crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('70 kg', style: TextStyle(fontSize: 18),),
                  Text('FEB. 26TH 2025', style: TextStyle(fontSize: 14, color: Colors.grey),)
                ],
              ),
              SizedBox(height: 5,),
              Divider(thickness: 0.5,)
            ],
          ),)
        ],
      ),
    );
  }
}