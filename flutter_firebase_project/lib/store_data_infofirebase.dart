import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StoreDataInfofirebase extends StatefulWidget {
  const StoreDataInfofirebase({super.key});

  @override
  State<StoreDataInfofirebase> createState() => _StoreDataInfofirebaseState();
}

class _StoreDataInfofirebaseState extends State<StoreDataInfofirebase> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController positioncontroller = TextEditingController();
  final CollectionReference myItems =
      FirebaseFirestore.instance.collection("Store Data");
  final CollectionReference fetchData =
      FirebaseFirestore.instance.collection("Store Data");

  Future<void> storeData() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return myDialogBox(context: context, onPressed: (){
            String name = namecontroller.text;
            String address = addresscontroller.text;
            String position = positioncontroller.text;
          myItems.add({
              'name':name, 'address': address, 'position':position
            });
            
            setState(() {
           namecontroller.clear();
          positioncontroller.clear();
          addresscontroller.clear();
          Navigator.pop(context);
        });
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          "Store  and Fetch Data In firebase",
          style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: storeData,
        backgroundColor: Colors.red,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: StreamBuilder(stream: fetchData.snapshots(), builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        if (streamSnapshot.hasData){
          return ListView.builder(
            itemCount: streamSnapshot.data!.docs.length,
            itemBuilder: (context, index) {
              final DocumentSnapshot documentSnapshot = streamSnapshot.data!.docs[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade700,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(title: Text(documentSnapshot['name'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),), subtitle: Text(documentSnapshot['position'], style: TextStyle(color: Colors.green,),),),
                      ),
                    ),
                  );
          });
        }
        return Center(child: CircularProgressIndicator(),);
      }),
    );
  }

  Dialog myDialogBox({required BuildContext context, required VoidCallback onPressed}) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Storing Data from User",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close))
                ],
              ),
              commonTextField("eg. Bendi", "Enter your name", namecontroller),
              commonTextField("eg. Lagos, Nigeria", "Enter your address",
                  addresscontroller),
              commonTextField(
                  "eg. CEO", "Enter your position", positioncontroller),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: onPressed,
                  child: const Text(
                    "Store",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Padding commonTextField(hint, label, controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.red, width: 2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.black, width: 2)),
        ),
      ),
    );
  }
}
