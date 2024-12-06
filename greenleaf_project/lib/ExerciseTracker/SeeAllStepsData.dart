import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Seeallstepsdata extends StatelessWidget {
  const Seeallstepsdata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All data', style: TextStyle(fontStyle: FontStyle.italic), ),
        actions: const [Icon(Icons.notification_add_outlined), SizedBox(width: 20,)],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: 50, 
            width: double.infinity,
            decoration: const BoxDecoration(color: Color.fromARGB(255, 235, 235, 235),),
            child: Column( crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Steps', style: GoogleFonts.manrope(color: Colors.grey),),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.only(left: 20, right:20, top:20),
          child: Column(
            children: [
              Row( crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('5,400', style: TextStyle(fontSize: 18),),
                  Text('FEB. 24TH 2025', style: TextStyle(fontSize: 14, color: Colors.grey),)
                ],
              ),
              SizedBox(height: 5,),
              Divider(thickness: 0.5,),
              SizedBox(height: 10,),
               Row( crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('6,000', style: TextStyle(fontSize: 18),),
                  Text('FEB. 25TH 2025', style: TextStyle(fontSize: 14, color: Colors.grey),)
                ],
              ),
              SizedBox(height: 5,),
              Divider(thickness: 0.5,),
              SizedBox(height: 10,),
               Row( crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('4,800', style: TextStyle(fontSize: 18),),
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