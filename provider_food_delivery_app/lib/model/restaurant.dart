import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider_food_delivery_app/model/cart_item.dart';
import 'package:provider_food_delivery_app/model/food_model.dart';

class Restaurant extends ChangeNotifier {
//list of food menu

  final List<Food> _menu = [
    // burger
    Food(
        name: "Classic Chessseburger",
        description:
            "A juicy beef patty with melted cheddat, lettuce, tomato, and a hint of onion and picle.",
        imagePath: "lib/images/burger/bugerr.png",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99)
        ],
        category: FoodCategory.Burger),
    Food(
        name: "BBQ Bacon Burger",
        description:
            "Smoky BBQ sauce, crispy bacon, and onion rings make this beef burger a savory delight.",
        imagePath: "lib/images/burger/burger.png",
        price: 10.99,
        availableAddons: [
          Addon(name: "Grilled Onions", price: 0.99),
          Addon(name: "Jalapenos", price: 1.49),
          Addon(name: "Extra BBQ Sauce", price: 1.99)
        ],
        category: FoodCategory.Burger),
    Food(
        name: "Veggie Burger",
        description:
            "A hearty veggie patty tapped with fresh avocado, lettuce and tomato, served on a whole.",
        imagePath: "lib/images/burger/buurger.png",
        price: 0.99,
        availableAddons: [
          Addon(name: "Vegan cheese", price: 0.99),
          Addon(name: "Grilled Mushrooms", price: 1.99),
          Addon(name: "Humus Spread", price: 1.99)
        ],
        category: FoodCategory.Burger),

    //salad
    Food(
        name: "Caesar Salad",
        description:
            "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
        imagePath: "lib/images/salad/saaaalad.png",
        price: 7.99,
        availableAddons: [
          Addon(name: "Grilled Chicken", price: 0.99),
          Addon(name: "Achonvies", price: 1.49),
          Addon(name: "Extra Parmesan", price: 1.99)
        ],
        category: FoodCategory.Salad),
    Food(
        name: "Quinona Salad",
        description:
            "Quinoa mixed with cucumbers, tomatoes, beil peppers, and a lemon vinaigrette.",
        imagePath: "lib/images/salad/salad.webp",
        price: 9.99,
        availableAddons: [
          Addon(name: "Avocado", price: 0.99),
          Addon(name: "Feta Cheese", price: 1.49),
          Addon(name: "Grilled Chicken", price: 1.99)
        ],
        category: FoodCategory.Salad),
    Food(
        name: "Geuine Salad",
        description:
            "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing",
        imagePath: "lib/images/salad/salaad.png",
        price: 7.99,
        availableAddons: [
          Addon(name: "Grilled Chicken", price: 0.99),
          Addon(name: "Grilled Mushrooms", price: 1.99),
          Addon(name: "Humus Spread", price: 1.99)
        ],
        category: FoodCategory.Salad),

    // chicken
    Food(
        name: "Classic Chicken",
        description:
            "A sweet and fleshy chicken, properly toasted and neatly preserved, good for food and nourishment.",
        imagePath: "lib/images/chicken/cchicken.png",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra lap", price: 0.99),
          Addon(name: "Wings", price: 1.99),
          Addon(name: "Snacks", price: 2.99)
        ],
        category: FoodCategory.Chicken),
    Food(
        name: "Turkey Chicken",
        description:
            "Smoky chicken with sauce and lot of seasoning, taste delicious and perfectly preserved",
        imagePath: "lib/images/chicken/chhicken.png",
        price: 10.99,
        availableAddons: [
          Addon(name: "Extra seasoning", price: 0.99),
          Addon(name: "Smoke", price: 1.49),
          Addon(name: "Extra Sauce", price: 1.99)
        ],
        category: FoodCategory.Chicken),
    Food(
        name: "Japanase Chicken",
        description:
            "Japanase Chicken offers alot of Vitamins and mineral, improve bone formation and blood production",
        imagePath: "lib/images/chicken/chicken.png",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra one", price: 0.99),
          Addon(name: "Indoment", price: 3.25),
          Addon(name: "Butter Spread", price: 0.99)
        ],
        category: FoodCategory.Chicken),

    // deserts

    Food(
        name: "Chocolate Brownie",
        description:
            "Rich and fudgy chocolate brownie, with chunks of chocolate.",
        imagePath:
            "lib/images/desserts/ddeserts.png", // deesertts.png deserts.png
        price: 5.99,
        availableAddons: [
          Addon(name: "vanilla Ice Cream", price: 0.99),
          Addon(name: "Hot Fudge", price: 1.49),
          Addon(name: "Whipped Cream", price: 2.99)
        ],
        category: FoodCategory.Desserts),
    Food(
        name: "Apple Pie",
        description:
            "Classic apple pie with a flaky crust and a cinnamon-spiced apple filling.",
        imagePath: "lib/images/desserts/deeserts.png",
        price: 5.99,
        availableAddons: [
          Addon(name: "Caramel Sauce", price: 0.99),
          Addon(name: "Vanilla Ice Cream", price: 1.49),
          Addon(name: "Cinnamon Spice", price: 1.99)
        ],
        category: FoodCategory.Desserts),
    Food(
        name: "Red Velvet Lava cake",
        description:
            "A delectable red velvet cake with a waem, gooey chocolate lava center, served with a delightful cream",
        imagePath: "lib/images/desserts/deserts.png",
        price: 0.99,
        availableAddons: [
          Addon(name: "Vegan cheese", price: 0.99),
          Addon(name: "Grilled Mushrooms", price: 1.99),
          Addon(name: "Humus Spread", price: 1.99)
        ],
        category: FoodCategory.Desserts),

    // drinks
    Food(
        name: "Lemonade",
        description:
            "Refreshing lemondade made with real lemons and a touch of sweetness.",
        imagePath: "lib/images/drinks/ddrinks.png",
        price: 2.99,
        availableAddons: [
          Addon(name: "Strawberry Flavor", price: 0.99),
          Addon(name: "Mint Leaves", price: 1.49),
          Addon(name: "Ginger zest", price: 1.99)
        ],
        category: FoodCategory.Drinks),
    Food(
        name: "Ice Tea",
        description: "Chilled iced tea with a hint of lemon, served over ice.",
        imagePath: "lib/images/drinks/driinks.png",
        price: 2.99,
        availableAddons: [
          Addon(name: "Peach Flavor", price: 0.99),
          Addon(name: "Lemon Slices", price: 1.49),
          Addon(name: "Honey", price: 1.99)
        ],
        category: FoodCategory.Drinks),
    Food(
        name: "Smoothie",
        description:
            "A blend of fresh fruits and yogurt, perfect for a healthy boost.",
        imagePath: "lib/images/drinks/drrinks.png",
        price: 4.99,
        availableAddons: [
          Addon(name: "Protein Powder", price: 0.99),
          Addon(name: "Almond Milk", price: 1.49),
          Addon(name: "Chia Seeds", price: 1.99)
        ],
        category: FoodCategory.Drinks),
  ];

  /*
  G E T T E R S 
  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  /*
  O P E R A T I O N S
  */
  // user cart

  final List<CartItem> _cart = [];
  // add to cart
  // check if theres is a cart item already with the same food and selected addons
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same

      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exits, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    } // otherwise, add a new cart item to the chart
    else {
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (_cart[cartIndex].quantity > 1) {
      _cart[cartIndex].quantity--;
    } else {
      _cart.removeAt(cartIndex);
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal + cartItem.quantity;
    }
    return total;
  }

  // get the total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
}
