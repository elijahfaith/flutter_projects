import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_food_delivery_app/component/my_current_location.dart';
import 'package:provider_food_delivery_app/component/my_description_box.dart';
import 'package:provider_food_delivery_app/component/my_drawer.dart';
import 'package:provider_food_delivery_app/component/my_food_tile.dart';
import 'package:provider_food_delivery_app/component/my_sliver_app_bar.dart';
import 'package:provider_food_delivery_app/component/my_tab_bar.dart';
import 'package:provider_food_delivery_app/model/food_model.dart';
import 'package:provider_food_delivery_app/model/restaurant.dart';
import 'package:provider_food_delivery_app/pages/food_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
// sorting out and returning a list of food items in specific category

  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // returning list of food in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      //get category menu
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
          shrinkWrap: true,
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            //get individual food
            final food = categoryMenu[index];
            return MyFoodTile(
              food: food,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodPage(food: food)));
              },
            );
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppBar(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Divider(
                          indent: 25,
                          endIndent: 25,
                          color: Theme.of(context).colorScheme.secondary,
                        ),

                        // my current location
                        MyCurrentLocation(),

                        // description box
                        MyDescriptionBox()
                      ],
                    ),
                    title: MyTabBar(tabController: _tabController))
              ],
          body: Consumer<Restaurant>(
            builder: (context, restaurant, child) => TabBarView(
              controller: _tabController,
              children: getFoodInThisCategory(restaurant.menu),
            ),
          )),
    );
  }
}
