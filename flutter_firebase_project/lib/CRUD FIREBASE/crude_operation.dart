import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_project/CRUD%20FIREBASE/details_screen.dart';

class CrudeOperation extends StatefulWidget {
  const CrudeOperation({super.key});

  @override
  State<CrudeOperation> createState() => _CrudeOperationState();
}

class _CrudeOperationState extends State<CrudeOperation> {
  final CollectionReference ecommerceApp =
      FirebaseFirestore.instance.collection("Ecommerce App");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "E-Commerce App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: StreamBuilder(
          stream: ecommerceApp.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.hasData) {
              return GridView.builder(
                itemCount: streamSnapshot.data!.docs.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12),
                itemBuilder: (context, index) {
                  final DocumentSnapshot documentSnapshot = streamSnapshot.data!.docs[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsScreen(documentSnapshot: documentSnapshot)));
                    },
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Hero(
                                tag: documentSnapshot['imageUrl'],
                                child: Container(
                                  height: 160,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        documentSnapshot['imageUrl'],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                documentSnapshot['name'],
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 2),
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Row(
                                      children: [
                                        Text(
                                          documentSnapshot['rating'.toString()],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 18,
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 20,)
,                                  Text(
                                   "\$${documentSnapshot['price'].toString()}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                  );
                },
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
