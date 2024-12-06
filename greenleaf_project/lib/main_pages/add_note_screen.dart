import 'package:flutter/material.dart';

class AddNoteScreen extends StatelessWidget {
  const AddNoteScreen({super.key});

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
                    Container(
                      height: 42,
                      width: 82,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 250, 226, 254),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          'Done',
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
