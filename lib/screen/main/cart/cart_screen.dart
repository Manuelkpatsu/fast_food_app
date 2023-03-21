import 'package:fast_food_app/models/category.dart';
import 'package:fast_food_app/models/food.dart';
import 'package:fast_food_app/models/topping.dart';
import 'package:fast_food_app/screen/main/checkout/checkout_screen.dart';
import 'package:fast_food_app/screen/widget/app_bar_title.dart';
import 'package:fast_food_app/screen/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:fast_food_app/screen/router.dart' as router;

import 'widget/cart_tile.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Food> cartItems = [
      const Food(
        id: 1,
        image: 'assets/images/foods/huki-burger.png',
        name: 'Huki Burger',
        price: 15.0,
        rating: 4.6,
        description:
            'This burger uses 100% quality beef with sliced tomatoes, pickles, vegetable, union and and extra thick cheese',
        categories: [
          Category(id: 1, image: 'assets/images/categories/burger', name: 'Burger'),
        ],
        toppings: [
          Topping(id: 1, image: 'assets/images/toppings/mustard.png', name: 'Mustard'),
          Topping(id: 2, image: 'assets/images/toppings/pepper-jack.png', name: 'Pepper Jack'),
          Topping(id: 3, image: 'assets/images/toppings/mushroom.png', name: 'Mushroom'),
          Topping(id: 4, image: 'assets/images/toppings/bacon.png', name: 'Bacon'),
        ],
        quantity: 2,
      ),
      const Food(
        id: 2,
        image: 'assets/images/foods/monstera-burger.png',
        name: 'Monstera Burger',
        price: 12.5,
        rating: 4.9,
        description:
            'This burger uses 100% quality beef with sliced tomatoes, pickles, vegetable, union and and extra thick cheese',
        categories: [
          Category(id: 1, image: 'assets/images/categories/burger', name: 'Burger'),
        ],
        toppings: [
          Topping(id: 1, image: 'assets/images/toppings/mustard.png', name: 'Mustard'),
          Topping(id: 2, image: 'assets/images/toppings/pepper-jack.png', name: 'Pepper Jack'),
          Topping(id: 3, image: 'assets/images/toppings/mushroom.png', name: 'Mushroom'),
          Topping(id: 4, image: 'assets/images/toppings/bacon.png', name: 'Bacon'),
        ],
        quantity: 1,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Cart'),
        centerTitle: true,
        actions: [
          IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: Image.asset(
              'assets/images/delete.png',
              width: 24,
              height: 24,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 20),
                itemCount: cartItems.length,
                itemBuilder: (ctx, index) {
                  Food food = cartItems[index];

                  return Padding(
                    padding: EdgeInsets.only(bottom: cartItems.length - 1 == index ? 0 : 16),
                    child: CartTile(
                      food: food,
                      onAddPressed: () {},
                      onDecreasePressed: () {},
                      onPressed: () {},
                      toggleFavorite: () {},
                    ),
                  );
                },
              ),
            ),
            CustomButton(
              onPressed: () {
                router.Router.pushNamed(CheckoutScreen.routeName, args: cartItems);
              },
              widget: const Text('Proceed to Checkout'),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
