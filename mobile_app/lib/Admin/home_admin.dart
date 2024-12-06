import 'package:flutter/material.dart';
import 'package:mobile_app/Admin/add_product.dart';
import 'package:mobile_app/Admin/all_orders.dart';
import 'package:mobile_app/widget/support_widget.dart';

class HomeAdmin extends StatefulWidget {
  const HomeAdmin({super.key});

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
        title: Text(
          "Home Admin",
          style: AppWidget.boldTextFieldStyle(),
        ),
        centerTitle: true,
      ),
      body: Container(
        
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
          SizedBox(height: 50.0,),
            GestureDetector(
               onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddProduct()));
            },
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 3.0,
                child: Container(
                  padding:
                      EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        size: 35,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Add Product",
                        style: AppWidget.boldTextFieldStyle(),
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0,),
            GestureDetector(
               onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AllOrders()));
              },
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 3.0,
                child: Container(
                  padding:
                      EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        size: 35,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "All Order",
                        style: AppWidget.boldTextFieldStyle(),
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
