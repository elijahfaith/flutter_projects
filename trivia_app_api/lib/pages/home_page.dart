import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:trivia_app_api/pages/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool music = true,
      geography = false,
      fooddrink = false,
      sciencenature = false,
      entertainment = false,
      answernow = false;

  //Strings to Store question
  String? question, answer;
  List<String> option = [];

  @override
  void initState() {
    super.initState();
    fetchQuiz("Music");
    RestOption();
  }

  Future<void> fetchQuiz(String category) async {
    final url =
        Uri.parse('https://api.api-ninjas.com/v1/trivia?category=$category');
    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application',
        'X-Api-Key': APIKEY,
      },
    );

    if (response.statusCode == 200) {
      List<dynamic> jsonData = jsonDecode(response.body);
      if (jsonData.isNotEmpty) {
        Map<String, dynamic> quiz = jsonData[0];
        question = quiz["question"];
        answer = quiz["answer"];
      }
      setState(() {});
    }
  }

  //to shuffle the option in the app
  void shuffleList() {
    option = List.from(option)..shuffle(Random());
    setState(() {});
  }

  Future<void> RestOption() async {
    final url = Uri.parse('https://api.api-ninjas.com/v1/randomword');
    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'X-Api-Key': APIKEY,
      },
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);
      if (jsonData.isNotEmpty) {
        String word = jsonData["word"].toString();
        option.add(word);
      }
      if (option.length < 4) {
       RestOption();
      } else {
        shuffleList();
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: option.length != 4
          ? Center(child: CircularProgressIndicator())
          : Container(
              margin: EdgeInsets.only(top: 80.0, left: 20.0),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        music
                            ? Container(
                                width: 100,
                                margin: EdgeInsets.only(right: 20.0),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                    child: Text(
                                  "Music",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                )),
                              )
                            : GestureDetector(
                                onTap: () async {
                                  music = true;
                                  geography = false;
                                  fooddrink = false;
                                  sciencenature = false;
                                  entertainment = false;
                                  option = [];
                                  await RestOption();
                                  await fetchQuiz("music");

                                  setState(() {});
                                },
                                child: Container(
                                  width: 100,
                                  margin: EdgeInsets.only(right: 20.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Music",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                        geography
                            ? Container(
                                width: 130,
                                margin: EdgeInsets.only(right: 20.0),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                    child: Text(
                                  "Geography",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                )),
                              )
                            : GestureDetector(
                                onTap: () async {
                                  music = false;
                                  geography = true;
                                  fooddrink = false;
                                  sciencenature = false;
                                  entertainment = false;
                                  option = [];
                                  await RestOption();
                                  await fetchQuiz("geography");
                                  setState(() {});
                                },
                                child: Container(
                                  width: 130,
                                  margin: EdgeInsets.only(right: 20.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Geography",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                        fooddrink
                            ? Container(
                                width: 130,
                                margin: EdgeInsets.only(right: 20.0),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                    child: Text(
                                  "Food Drink",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                )),
                              )
                            : GestureDetector(
                                onTap: () async {
                                  music = false;
                                  geography = false;
                                  fooddrink = true;
                                  sciencenature = false;
                                  entertainment = false;
                                  option = [];
                                  await RestOption();
                                  await fetchQuiz("fooddrink");
                                  setState(() {});
                                },
                                child: Container(
                                  width: 130,
                                  margin: EdgeInsets.only(right: 20.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Food Drink",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                        sciencenature
                            ? Container(
                                width: 200,
                                margin: EdgeInsets.only(right: 20.0),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                    child: Text(
                                  "Science Nature",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                )),
                              )
                            : GestureDetector(
                                onTap: () async {
                                  music = false;
                                  geography = false;
                                  fooddrink = false;
                                  sciencenature = true;
                                  entertainment = false;
                                  option = [];
                                  await RestOption();
                                  await fetchQuiz("sciencenature");
                                  setState(() {});
                                },
                                child: Container(
                                  width: 200,
                                  margin: EdgeInsets.only(right: 20.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Science Nature",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                        entertainment
                            ? Container(
                                width: 150,
                                margin: EdgeInsets.only(right: 20.0),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                    child: Text(
                                  "Entertainment",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                )),
                              )
                            : GestureDetector(
                                onTap: () async {
                                  music = false;
                                  geography = false;
                                  fooddrink = false;
                                  sciencenature = false;
                                  entertainment = true;
                                  option = [];
                                  await RestOption();
                                  await fetchQuiz("entertainment");
                                  setState(() {});
                                },
                                child: Container(
                                  width: 150,
                                  margin: EdgeInsets.only(right: 20.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Entertainment",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 65.0,
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 20.0),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.49,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.3,
                            child: Text(
                              question!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              answernow =
                                  option[0].replaceAll(RegExp(r'[\[\]]'), "") ==
                                      answer;
                              setState(() {});
                            },
                            child: Container(
                              height: 60,
                              margin: EdgeInsets.only(
                                right: 30,
                                left: 30,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: answernow
                                          ? (answer ==
                                                  option[0].replaceAll(
                                                      RegExp(r'[\[\]]'), "")
                                              ? Colors.green
                                              : Colors.red)
                                          : Colors.black45,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(20)),
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Text(
                                  option[0].replaceAll(RegExp(r'[\[\]]'), ""),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              answernow =
                                  option[1].replaceAll(RegExp(r'[\[\]]'), "") ==
                                      answer;
                              setState(() {});
                            },
                            child: Container(
                              height: 60,
                              margin: EdgeInsets.only(
                                right: 30,
                                left: 30,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: answernow
                                          ? (answer ==
                                                  option[1].replaceAll(
                                                      RegExp(r'[\[\]]'), "")
                                              ? Colors.green
                                              : Colors.red)
                                          : Colors.black45,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(20)),
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Text(
                                  option[1].replaceAll(RegExp(r'[\[\]]'), ""),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              answernow =
                                  option[2].replaceAll(RegExp(r'[\[\]]'), "") ==
                                      answer;
                              setState(() {});
                            },
                            child: Container(
                              height: 60,
                              margin: EdgeInsets.only(
                                right: 30,
                                left: 30,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: answernow
                                          ? (answer ==
                                                  option[2].replaceAll(
                                                      RegExp(r'[\[\]]'), "")
                                              ? Colors.green
                                              : Colors.red)
                                          : Colors.black45,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(20)),
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Text(
                                  option[2].replaceAll(RegExp(r'[\[\]]'), ""),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              answernow =
                                  option[3].replaceAll(RegExp(r'[\[\]]'), "") ==
                                      answer;
                              setState(() {});
                            },
                            child: Container(
                              height: 60,
                              margin: EdgeInsets.only(
                                right: 30,
                                left: 30,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: answernow
                                          ? (answer ==
                                                  option[3].replaceAll(
                                                      RegExp(r'[\[\]]'), "")
                                              ? Colors.green
                                              : Colors.red)
                                          : Colors.black45,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(20)),
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Text(
                                  option[3].replaceAll(RegExp(r'[\[\]]'), ""),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
    );
  }
}
