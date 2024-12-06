import 'package:flutter/material.dart';
import 'package:greenleaf_project/const.dart';

class RecordsPage extends StatelessWidget {
  const RecordsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Records',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 30),
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.only(left: 20, right: 10, top: 20, bottom: 20),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: backgroundcard,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Activity type',
                    style: TextStyle(color: Colors.purple, fontSize: 18),
                  ),
                  const VerticalDivider(
                    thickness: 2,
                    color: Colors.purple,
                  ),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Walk',
                        style: TextStyle(color: Colors.purple, fontSize: 18),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_downward_sharp,
                            color: Colors.purple,
                          ))
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Column(
                children: [
                  Text('3', style: TextStyle(fontSize: 50, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),),
                  Text('Total Walks', style: TextStyle(fontSize: 16),)
                ],
              ),
              Column(
                children: [
                  Text('16.09', style: TextStyle(fontSize: 50, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),),
                  Text('Total km', style: TextStyle(fontSize: 16),)
                ],
              )
            ],)
          ],
        ),
      ),
    );
  }
}
