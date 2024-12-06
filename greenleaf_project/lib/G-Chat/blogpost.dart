import 'package:flutter/material.dart';
import 'package:greenleaf_project/G-Chat/ReusableContainer.dart';
import 'package:greenleaf_project/G-Chat/trendingnewslist.dart';

class Blogpost extends StatelessWidget {
  const Blogpost({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text('Trending news', style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic, 
                      fontSize: 18, fontWeight: FontWeight.w200  ),),
                      Spacer()
,                       Text('Show more', style: TextStyle(color: Colors.black, 
                      fontSize: 14),),
            ],
          ),
          const SizedBox(height:10), 
          SizedBox(
                width: double.infinity,
                height: 250,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(left: 10, right: 5, bottom: 10),
                      child: Trendingnews(),
                    );
                  },
                ),
              ),
              const SizedBox(height:30),
              const Row(
            children: [
              Text('Understanding your cycle', style: TextStyle(color: Colors.red, fontStyle: FontStyle.italic, 
                      fontSize: 18, fontWeight: FontWeight.w200  ),),
                      Spacer()
,                       Text('Show more', style: TextStyle(color: Colors.purple, 
                      fontSize: 14),),
            ],
          ),

          const SizedBox(height: 10,),
          const ReusedableContainer(imagepath: 'assets/images/Rectangle96.png', label: 'Period hacks', ),
          const SizedBox(height: 10,),
          const ReusedableContainer(imagepath: 'assets/images/Rectangle98.png', label: 'How the menstrual cycle\nworks', ),  
          const SizedBox(height: 10,),
          const ReusedableContainer(imagepath: 'assets/images/Rectangle100.png', label: 'Diet and nutrition', ),

           const SizedBox(height:40),
              const Row(
            children: [
              Text('Maintaining your weight', style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic, 
                      fontSize: 18, fontWeight: FontWeight.w200  ),),
                      Spacer()
,                       Text('Show more', style: TextStyle(color: Colors.purple, 
                      fontSize: 14),),

            ],
          ),
          const SizedBox(height: 10,),
          const ReusedableContainer(imagepath: 'assets/images/Rectangle104.png', label: 'Managing your Weight', ),
          const SizedBox(height: 10,),
          const ReusedableContainer(imagepath: 'assets/images/Rectangle105.png', label: 'Nutrition basics for your female\nhealth', ),
           const SizedBox(height:30),
              const Row(
            children: [
              Text('Maintaining your height', style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic, 
                      fontSize: 18, fontWeight: FontWeight.w200  ),),
                      Spacer()
,                       Text('Show more', style: TextStyle(color: Colors.purple, 
                      fontSize: 14),),
            ],
          ),
          const SizedBox(height: 20,),
          const ReusedableContainer(imagepath: 'assets/images/Rectangle104.png', label: 'Maintaing your height')






        ],
      ),
    );
  }
}
