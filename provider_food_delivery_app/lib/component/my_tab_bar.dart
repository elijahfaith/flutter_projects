import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_food_delivery_app/model/food_model.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildCategortyTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split(".").last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(controller: tabController, tabs: _buildCategortyTabs()),
    );
  }
}
