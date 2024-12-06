import 'package:flutter/material.dart';
import 'package:provider_food_delivery_app/model/food_model.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback OnDecrement;

  const QuantitySelector(
      {super.key,
      required this.quantity,
      required this.food,
      required this.onIncrement,
      required this.OnDecrement});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: OnDecrement,
            child: Icon(
              Icons.remove,
              size: 28,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: SizedBox(
              width: 20,
              child: Center(
                child: Text(quantity.toString()),
              ),
            ),
          ),
          GestureDetector(
            onTap: onIncrement,
            child: Icon(
              Icons.add,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          )
        ],
      ),
    );
  }
}
