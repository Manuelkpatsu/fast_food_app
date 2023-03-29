import 'package:fast_food_app/models/category.dart';
import 'package:fast_food_app/models/food.dart';
import 'package:fast_food_app/models/topping.dart';
import 'package:fast_food_app/screen/main/food_detail/food_detail_screen.dart';
import 'package:fast_food_app/screen/widget/app_bar_title.dart';
import 'package:flutter/material.dart';
import 'package:fast_food_app/screen/router.dart' as router;

import 'widget/favorite_tile.dart';

class FavoriteScreen extends StatelessWidget {
  static const routeName = '/favorite';

  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Food> favorites = [
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
        quantity: 100,
      ),
      const Food(
        id: 2,
        image: 'assets/images/foods/kebab-turki.png',
        name: 'Kebab Turki',
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
        quantity: 50,
      ),
      const Food(
        id: 3,
        image: 'assets/images/foods/bacon-kebab.png',
        name: 'Bacon Kebab',
        price: 15.0,
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
        quantity: 40,
      ),
      const Food(
        id: 4,
        image: 'assets/images/foods/monstera-burger.png',
        name: 'Monstera Burger',
        price: 12.0,
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
        quantity: 30,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Favourite'),
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
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
        itemCount: favorites.length,
        itemBuilder: (context, int index) {
          Food food = favorites[index];

          return FavoriteTile(
            onPressed: () {
              router.Router.pushNamed(FoodDetailScreen.routeName, args: food);
            },
            food: food,
            toggleFavorite: () {},
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          mainAxisExtent: 180,
        ),
      ),
    );
  }
}
