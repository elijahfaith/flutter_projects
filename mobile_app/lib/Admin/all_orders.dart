import 'package:flutter/material.dart';
import 'package:mobile_app/widget/support_widget.dart';
import 'package:mobile_app/services/shared_pref.dart';
import 'package:mobile_app/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AllOrders extends StatefulWidget {
  const AllOrders({super.key});

  @override
  State<AllOrders> createState() => _AllOrdersState();
}

class _AllOrdersState extends State<AllOrders> {
  Stream? orderStream;

  getontheLoad() async {
    orderStream = await DatabaseMethods().allOrders();
    setState(() {});
  }

  @override
  void initState() {
    getontheLoad();
    super.initState();
  }

  Widget allOrders() {
    return StreamBuilder(
        stream: orderStream,
        builder: (context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];
                    return Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 20.0, top: 10.0, bottom: 10.0),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Image.network(
                                ds["ProductImage"],
                                height: 120,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Name: " + ds["Name"],
                                    style: AppWidget.semiboldTextFieldStyle(),
                                  ),
                                  Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      child: Text(
                                        "Email: " + ds["Email"],
                                        style: AppWidget
                                            .lightreducedTextFieldStyle(),
                                      )),
                                  Text(
                                    ds["Product"],
                                    style: AppWidget.semiboldTextFieldStyle(),
                                  ),
                                  Text("\$" + ds["Price"],
                                      style: TextStyle(
                                          fontSize: 23.0,
                                          color: Colors.red[400],
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () async{
                                      await DatabaseMethods().updateStatus(ds.id);
                                      setState(() {
                                        
                                      });
                                    },
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5.0),
                                      decoration: BoxDecoration(
                                          color: Colors.red[400],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      width: 150,
                                      child: Center(
                                        child: Text("Done",
                                            style: AppWidget
                                                .semiboldTextFieldStyle()),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  })
              : Container();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
        title: Text(
          "All Orders",
          style: AppWidget.boldTextFieldStyle(),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          children: [Expanded(child: allOrders())],
        ),
      ),
    );
  }
}
