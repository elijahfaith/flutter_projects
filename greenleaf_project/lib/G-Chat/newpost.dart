import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/postavatar.dart';

class Newpost extends StatelessWidget {
  const Newpost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.close_outlined,
                        size: 34,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'Drafts',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 42,
                      width: 82,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 250, 226, 254),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Text(
                          'Post',
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  postavatar(),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Title',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const TextField(
                minLines: 1,
                maxLines: 100,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Make a note',
                    hintStyle: TextStyle(color: Colors.grey)),
                cursorColor: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
