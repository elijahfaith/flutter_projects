import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> users = [];

  void fecthUser() async {
    // the url where the APi reside
    final url = 'https://randomuser.me/api/?results=100';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    // the body of the APi
    final body = response.body;
    // convert to json format
    final json = jsonDecode(body);
    setState(() {
      users = json['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Api Call"),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(itemCount: users.length, itemBuilder: (context, index) {
          final user = users[index];
          // to displace the email part of the api
          final email = user['email'];
          // to display the name in the api
          final name = user['name']['first'];
          // to display the pictures on the api
          final imageUrl = user['picture']['thumbnail'];
          return ListTile(
            leading: ClipRRect( borderRadius: BorderRadius.circular(100),
              child: Image.network(imageUrl),),
            title: Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            subtitle: Text(email),
          );
        },),
        floatingActionButton: FloatingActionButton(onPressed: fecthUser));
  }
}
