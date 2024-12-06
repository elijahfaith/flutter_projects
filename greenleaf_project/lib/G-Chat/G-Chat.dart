import 'package:flutter/material.dart';
import 'package:greenleaf_project/G-Chat/Gchatcomponent.dart';
import 'package:greenleaf_project/G-Chat/appbar.dart';
import 'package:greenleaf_project/G-Chat/auto_image.dart';
import 'package:greenleaf_project/G-Chat/blogpost.dart';
import 'package:greenleaf_project/G-Chat/choose_avatar.dart';
import 'package:greenleaf_project/G-Chat/joboppo.dart';
import 'package:greenleaf_project/G-Chat/newpost.dart';
import 'package:greenleaf_project/components/comment.dart';
import 'package:greenleaf_project/components/postavatar.dart';
import 'package:greenleaf_project/components/text%20widget1.dart';
import 'package:greenleaf_project/components/text%20widget2.dart';
import 'package:readmore/readmore.dart';

class G_Chat extends StatefulWidget {
  const G_Chat({super.key});

  @override
  State<G_Chat> createState() => _G_ChatState();
}

class _G_ChatState extends State<G_Chat> {
 
 List<String> items = [
  "G-Chat",
  "Blog Post",
  "Job Opportunities",
];
 int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: const GchatAppbar(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
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
                        padding: const EdgeInsets.symmetric(horizontal: 18,),
                        decoration: BoxDecoration(color: current == index ?const Color.fromARGB(255, 250, 226, 254) : const Color.fromARGB(255, 239, 238, 238), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                         child: Text(items[index], style: TextStyle(color: current == index ? Colors.purple : Colors.black, fontSize: 15),),
                        ),),
                      );
                    }),
                 ),
                  const SizedBox(
                    height: 20,
                  ),
                  IndexedStack(
                    index: current,
                    children: [
                      Center(child: Gchatcomponent()),
                      const Center(child: Blogpost()),
                      const Center(child: JobOppotunity()),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
