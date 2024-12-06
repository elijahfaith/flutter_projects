import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_app/screens/category_products.dart';
import 'package:mobile_app/screens/product_detail.dart';
import 'package:mobile_app/services/database.dart';
import 'package:mobile_app/services/shared_pref.dart';
import 'package:mobile_app/widget/support_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController searchcontroller = TextEditingController();
  bool search = false;

  List categories = [
    "images/headphone1.jpeg",
    "images/laptop.jpeg",
    "images/watch3.png",
    "images/tv.jpeg"
  ];

  List Categoryname = ["Headphones", "Laptop", "Watch", "TV"];

  var queryResultSet = [];
  var tempSearchStore = [];

  initiateSearch(value) {
    if (value.length == 0) {
      setState(() {
        queryResultSet = [];
        tempSearchStore = [];
        search = false;
      });
      return;
    }
    setState(() {
      search = true;
    });
    var CapitalizedValue =
        value.substring(0, 1).toUpperCase() + value.substring(1);
    if (queryResultSet.isEmpty && value.length == 1) {
      DatabaseMethods().search(value).then((QuerySnapshot doc) {
        for (int i = 0; i < doc.docs.length; ++i) {
          queryResultSet.add(doc.docs[i].data());
        }
        setState(() {
          tempSearchStore = queryResultSet;
        });
      });
    } else {
      tempSearchStore = [];
      queryResultSet.forEach((element) {
        if (element['UpdatedName'].startsWith(CapitalizedValue)) {
          setState(() {
            tempSearchStore.add(element);
          });
          print(tempSearchStore);
        }
      });
    }
  }

  String? name, image;

  getthesharedpref() async {
    name = await SharedPreferenceHelper().getUserName();
    image = await SharedPreferenceHelper().getUserImage();
    setState(() {});
  }

  ontheload() async {
    await getthesharedpref();

    setState(() {});
  }

  @override
  void initState() {
    ontheload();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: name == null
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 30, left: 20, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hey " + name!,
                              style: AppWidget.boldTextFieldStyle(),
                            ),
                            Text(
                              "Good Morning",
                              style: AppWidget.lightTextFieldStyle(),
                            )
                          ],
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "images/person-man.webp",
                              height: 70,
                              width: 70,
                              fit: BoxFit.cover,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        width: MediaQuery.of(context).size.width,
                        child: TextField(
                          controller: searchcontroller,
                          onChanged: (value) {
                            initiateSearch(value.toUpperCase());
                          },
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search product",
                              hintStyle: AppWidget.lightTextFieldStyle(),
                              prefixIcon: search? GestureDetector(
                                onTap: (){
                                  search=false;
                                  tempSearchStore = [];
                                  queryResultSet = [];
                                  searchcontroller.text="";
                                  setState(() {
                                    
                                  });

                                },
                                child: Icon(Icons.close)) :  Icon(
                                Icons.search,
                                color: Colors.black,
                              )),
                        )),
                    SizedBox(
                      height: 10.0,
                    ),
                    search
                        ? ListView(
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            primary: false,
                            shrinkWrap: true,
                            children: tempSearchStore.map((element) {
                              return buildResultCard(element);
                            }).toList(),
                          )
                        : Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Categories",
                                        style:
                                            AppWidget.semiboldTextFieldStyle()),
                                    Text("see all",
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.red[400],
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 130,
                                      padding: EdgeInsets.all(15),
                                      margin: EdgeInsets.only(
                                        right: 20.0,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.red[400],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Text(
                                        "All",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      ))),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.zero,
                                      height: 130,
                                      child: ListView.builder(
                                        itemCount: categories.length,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return CategoryTile(
                                            image: categories[index],
                                            name: Categoryname[index],
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("All products",
                                      style:
                                          AppWidget.semiboldTextFieldStyle()),
                                  Text("see all",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.red[400],
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              Container(
                                height: 240,
                                child: ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "images/headphone1.jpeg",
                                            height: 150,
                                            width: 150,
                                            fit: BoxFit.cover,
                                          ),
                                          Text(
                                            "Headphone",
                                            style: AppWidget
                                                .semiboldTextFieldStyle(),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "\$100",
                                                style: TextStyle(
                                                    color: Colors.red[400],
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 40,
                                              ),
                                              Container(
                                                  padding: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      color: Colors.red[400],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                  ))
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 20.0),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "images/laptop.jpeg",
                                            height: 150,
                                            width: 150,
                                            fit: BoxFit.cover,
                                          ),
                                          Text(
                                            "Samsung Laptop",
                                            style: AppWidget
                                                .semiboldTextFieldStyle(),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "\$5,200.99",
                                                style: TextStyle(
                                                    color: Colors.red[400],
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 40,
                                              ),
                                              Container(
                                                  padding: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      color: Colors.red[400],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                  ))
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "images/watch3.png",
                                            height: 150,
                                            width: 150,
                                            fit: BoxFit.cover,
                                          ),
                                          Text(
                                            "Apple Watch",
                                            style: AppWidget
                                                .semiboldTextFieldStyle(),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "\$199.99",
                                                style: TextStyle(
                                                    color: Colors.red[400],
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 40,
                                              ),
                                              Container(
                                                  padding: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      color: Colors.red[400],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                  ))
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                  ],
                ),
              ),
            ),
    );
  }

  Widget buildResultCard(data) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetail(detail: data["Detail"], image: data["Image"], name: data["Name"], price: data["Price"])));
      },
      child: Container(
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                data["Image"],
                height: 75,
                width: 75,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 20.0,),
            Text(
              data["Name"],
              style: AppWidget.semiboldTextFieldStyle(),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  String image, name;
  CategoryTile({required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CategoryProduct(
                      category: name,
                    )));
      },
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(
          right: 20.0,
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              image,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
            Icon(Icons.arrow_forward)
          ],
        ),
      ),
    );
  }
}
