import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final DocumentSnapshot<Object?>
      documentSnapshot; // ds also meand documentSnapshot;
  const DetailsScreen({super.key, required this.documentSnapshot});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(235, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            Stack(
              children: [
                Hero(
                  tag: documentSnapshot['imageUrl'] ,
                  child: Image.network(
                    documentSnapshot['imageUrl'],
                    height: 400, width: double.infinity,
                    // fit: BoxFit.fill,
                  ),
                ),
                const BackButton()
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    documentSnapshot['name'],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Row(
                    children: [
                      Text(
                        "\$${documentSnapshot['price'].toString()}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 30,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber[900],
                      ),
                      Text(
                        documentSnapshot['rating'],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "${documentSnapshot['review']}(review)",
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    documentSnapshot['description'],
                    maxLines: 6,
                    style: const TextStyle(
                        fontSize: 18, overflow: TextOverflow.ellipsis),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 55,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                width: 2,
                                color: documentSnapshot['isFavorite'] == true
                                    ? Colors.red
                                    : Colors.black),
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.favorite,
                          size: 30,
                          color: documentSnapshot['isFavorite'] == true
                              ? Colors.red
                              : Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: Container(
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child:const Center(
                            child: Text(
                          "Add to Cart",
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                      ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
