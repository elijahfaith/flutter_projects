import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_food_delivery_app/component/my_button.dart';
import 'package:provider_food_delivery_app/model/food_model.dart';
import 'package:provider_food_delivery_app/model/restaurant.dart';
import 'package:provider_food_delivery_app/model/cart_item.dart';

class FoodPage extends StatefulWidget {
  final Food food;

  const FoodPage({super.key, required this.food});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  late Map<Addon, bool> selectedAddons;

  @override
  void initState() {
    super.initState();
    // Initialize selectedAddons based on the available addons of the food
    selectedAddons = {};
    for (Addon addon in widget.food.availableAddons) {
      selectedAddons[addon] = false; // Initially, no addons are selected
    }
  }

  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    //close the current food page to go back to menu
    Navigator.pop(context);

    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(widget.food.imagePath),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.food.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "\$" + widget.food.price.toString(),
                      style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.food.description,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Add-ons",
                      style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondary)),
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.food.availableAddons.length,
                        itemBuilder: (context, index) {
                          Addon addon = widget.food.availableAddons[index];
                          return CheckboxListTile(
                            title: Text(addon.name),
                            subtitle: Text("\$" + addon.price.toString()),
                            value: selectedAddons[addon],
                            onChanged: (bool? value) {
                              setState(() {
                                selectedAddons[addon] = value!;
                              });
                            },
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              MyButton(
                  text: "Add to cart",
                  onTap: () => addToCart(widget.food, selectedAddons)),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      SafeArea(
          child: Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle),
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back))))
    ]);
  }
}
