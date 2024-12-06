import 'package:flutter/material.dart';
import 'package:mobile_app/services/shared_pref.dart';
import 'package:mobile_app/widget/support_widget.dart';
import 'package:mobile_app/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
 String? email;
 
  getthesharedpref()async{
    email = await SharedPreferenceHelper().getUserEmail();
    setState(() {
      
    });
  }
 
 
 
  Stream? orderStream;
getontheload()async{
  await getthesharedpref();
  orderStream = await DatabaseMethods().getOrders(email!);
  setState(() {
    
  });
}

@override
void initState() {
  getontheload();
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
                    DocumentSnapshot ds = snapshot.data!.docs[index];
                    return Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Material(
                                    elevation: 3.0,
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),), 
                                      child: Row(
                                        children: [
                      Image.network(
                       ds["ProductImage"],
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 10,), 
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ds["Product"], style: AppWidget.semiboldTextFieldStyle(), ),
                           Text("\$" + ds["Price"],
                              style: TextStyle(
                                  fontSize: 23.0,
                                  color: Colors.red[400],
                                  fontWeight: FontWeight.bold)),
                            Text("Status: " + ds["Status"], style: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),  ),
                         
                                
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
      backgroundColor: Color(0xfff2f2f2),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xfff2f2f2),
        title: Text(
          "Current Orders",
          style: AppWidget.boldTextFieldStyle(),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left:20.0, right:20.0),
        child: Column(
          children: [
            Expanded(child: allOrders())
          ],
        ),
      ),
    );
  }
}
