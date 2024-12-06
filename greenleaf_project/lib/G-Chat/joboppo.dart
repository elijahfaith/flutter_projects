import 'package:flutter/material.dart';
class JobOppotunity extends StatelessWidget {
  const JobOppotunity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container
  (  margin: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          thickness: 1,
        ),
        const SizedBox(height: 10,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Full Stack Mobile App\nDeveloper', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.black),
            ),
            const Spacer(),
            Container( height: 30, padding: const EdgeInsets.symmetric(horizontal: 18,), decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color.fromARGB(255, 250, 226, 254),),
            child: const Center(child: Text('Full Time', style: TextStyle(color: Colors.purple),)),),
          ],
        ),
        const SizedBox(height: 5,),
        const Row(
          children: [
            Text('Posted on', style: TextStyle(fontWeight: FontWeight.w100),),
            SizedBox(width: 5),
           Text('Feb 15, 2020', style: TextStyle(),),
           SizedBox(width: 135),
           Icon(Icons.open_in_new),
          ],
        ),
        const SizedBox(height:10,),
        Row(children: [
        Image.asset('assets/images/Group689.png'),
        const SizedBox(width: 10,),
        const Text('Logic'),
        const Spacer(),
        const Text('San Francisco, CA', style: TextStyle(fontSize: 17))
        ],),
        const SizedBox(height: 10,),
        const Divider(thickness: 1,),
        const SizedBox(height: 10,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Passionate Web App\nUI Developer', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.black),
            ),
            const Spacer(),
            Container( height: 30, padding: const EdgeInsets.symmetric(horizontal: 18,), decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color.fromARGB(255, 254, 226, 227),),
            child: const Center(child: Text('Full Time', style: TextStyle(color: Colors.purple),)),),
          ],
        ),
        const SizedBox(height: 5,),
        const Row(
          children: [
            Text('Posted on', style: TextStyle(fontWeight: FontWeight.w100),),
            SizedBox(width: 5),
           Text('Feb 15, 2020', style: TextStyle(),),
           SizedBox(width: 135),
           Icon(Icons.open_in_new),
          ],
        ),
        const SizedBox(height:10,),
        Row(children: [
        Image.asset('assets/images/Group688.png'),
        const SizedBox(width: 10,),
        const Text('Logic'),
        const Spacer(),
        const Text('San Francisco, CA', style: TextStyle(fontSize: 17))
        ],),
        const SizedBox(height: 10,),
        const Divider(thickness: 1,),

      ],
    ),
  );
  }
}