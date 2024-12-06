import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:greenleaf_project/DietTracker/favouritetab.dart';
import 'package:greenleaf_project/DietTracker/populartab.dart';
import 'package:greenleaf_project/profile_account/help_content.dart';

class Addmeal extends StatefulWidget {
  const Addmeal({super.key});

  @override
  State<Addmeal> createState() => _AddmealState();
}


List<String> items = [
  "Popular",
  "Favorite",
  "Recent",
 ];
 int current = 0;

class _AddmealState extends State<Addmeal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add meal', style: TextStyle(fontStyle: FontStyle.italic),),
        actions: const [
        Icon(Icons.notification_add_outlined),
        SizedBox(width: 10,),
        
        ],
        centerTitle: true,
      ) ,
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            const Searchbutton(hintText: 'Search meal',),
            const SizedBox(height: 20,),
            SizedBox(
                    height: 40,
                     child: ListView.builder(
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (cxt, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: Container( margin: const EdgeInsets.symmetric(horizontal: 5),
                          padding: const EdgeInsets.symmetric(horizontal: 40,),
                          decoration: BoxDecoration(color: current == index ?const Color.fromARGB(255, 250, 226, 254) : const Color.fromARGB(255, 239, 238, 238), borderRadius: BorderRadius.circular(10)),
                          child: Center(
                           child: Text(items[index], style: TextStyle(color: current == index ? Colors.purple : Colors.black, fontSize: 15),),
                          ),),
                        );
                      }),
                   ),
                   const SizedBox(height: 10,),
                    IndexedStack(
                      index: current,
                      children: const [
                         Populartab(),
                        Favouritetab(),
                        Center(child: Text('Recent Meal comes in here', style: TextStyle(fontSize: 20,),)),
                        
                      ],
                    )
               
          ],
        ),),
      ),
    );
  }
}