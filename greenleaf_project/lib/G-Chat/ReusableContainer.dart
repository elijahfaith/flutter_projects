import 'package:flutter/material.dart';


class ReusedableContainer extends StatelessWidget {

  final String label;
  final String imagepath;


  const ReusedableContainer({
    super.key, required this.imagepath,  required this.label
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left:10, top: 10, bottom: 10),
      height: 90,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white,),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagepath),
          const SizedBox(width: 10,),
          Column( crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label, style: const TextStyle(fontSize: 16),),
              const Row( 
                children: [
                  Text('Jan 15, 2021'),
                  SizedBox(width: 25,),
                  Icon(Icons.timer_outlined),
                  SizedBox(width: 5),
                  Text('5 min read')
                
                ],
              )
            ],
          )
        ],
        
      ),
    );
  }
}
