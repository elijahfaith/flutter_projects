import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:readmore/readmore.dart';

class Trendingnews extends StatelessWidget {
  const Trendingnews({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            offset: const Offset(3, 4),
            blurRadius: 4,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10,),
            child: Container(
              width: 300,
              height: 120,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/inimages1.png'),
                ),
              ),
            ),
          ),
           const Padding(
             padding: EdgeInsets.only(left: 20),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                 Text("Mental trauma of Miscarriage",
                  style: TextStyle(fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),
                  
                 ),
                 Text('Miscarriage occur to wooman in their\nunder 20weeks of pregnancy'),
                 Row( mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('Show more', style: TextStyle(color: Colors.purple),),
                     SizedBox(width: 5,),
                    Icon(Icons.arrow_forward_ios, color: Colors.purple, size: 12,)
                   ],
                 )
                
                
               ],
             ),
           ),
       
        ],
      ),
    );
  }
}