import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_app/screens/product_detail.dart';
import 'package:mobile_app/services/database.dart';
import 'package:mobile_app/widget/support_widget.dart';

class CategoryProduct extends StatefulWidget {
  String category; CategoryProduct({super.key, required this.category});

  @override
  State<CategoryProduct> createState() => _CategoryProductState();
}

class _CategoryProductState extends State<CategoryProduct> {
  Stream? CategoryStream;

  getontheLoad() async{
    CategoryStream = await DatabaseMethods().getProducts(widget.category);
    setState(() {
      
    });
  }

  @override
  void initState() {
    getontheLoad();
    super.initState();
    
  }

  Widget allProducts() {
    return StreamBuilder(
        stream: CategoryStream,
        builder: (context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 10.0),
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];
                    return Container(
                    
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          SizedBox(height: 20.0),
                          Image.network(
                            ds["Image"],
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                           SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            ds["Name"],
                            style: AppWidget.semiboldTextFieldStyle(),
                          ),
                         Spacer(),
                          Row(
                            children: [
                              Text(
                                "\$"+ ds["Price"],
                                style: TextStyle(
                                    color: Colors.red[400],
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetail(detail: ds['Detail'], image: ds['Image'], name: ds['Name'], price: ds['Price'])));
                                },
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.red[400],
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  })
              : Container();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      appBar: AppBar(
        backgroundColor: Color(0xfff2f2f2),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Expanded(child: allProducts())
          ],
        ),
      ),
    );
  }
}
