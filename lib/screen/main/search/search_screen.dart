import 'package:fast_food_app/models/category.dart';
import 'package:fast_food_app/models/food.dart';
import 'package:fast_food_app/models/topping.dart';
import 'package:fast_food_app/screen/main/food_detail/food_detail_screen.dart';
import 'package:fast_food_app/screen/main/home/widget/food_tile.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:fast_food_app/screen/router.dart' as router;

import 'widget/result_text.dart';

class SearchScreen extends SearchDelegate {
  final List<Food> searchTerms = [
    const Food(
      id: 1,
      image: 'assets/images/foods/monstera-burger.png',
      name: 'Monstera Burger',
      price: 12.0,
      rating: 4.9,
      description:
          'This burger uses 100% quality beef with sliced tomatoes, pickles, vegetable, union and and extra thick cheese. It tastes really great and it is the best in town.',
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
      id: 2,
      image: 'assets/images/foods/bacon-kebab.png',
      name: 'Bacon Kebab',
      price: 12.5,
      rating: 4.6,
      description:
          'This burger uses 100% quality beef with sliced tomatoes, pickles, vegetable, union and and extra thick cheese. It tastes really great and it is the best in town.',
      categories: [
        Category(id: 1, image: 'assets/images/categories/burger', name: 'Burger'),
      ],
      toppings: [
        Topping(id: 1, image: 'assets/images/toppings/mustard.png', name: 'Mustard'),
        Topping(id: 2, image: 'assets/images/toppings/pepper-jack.png', name: 'Pepper Jack'),
        Topping(id: 3, image: 'assets/images/toppings/mushroom.png', name: 'Mushroom'),
        Topping(id: 4, image: 'assets/images/toppings/bacon.png', name: 'Bacon'),
      ],
      quantity: 46,
    ),
    const Food(
      id: 3,
      image: 'assets/images/foods/big-beef-kebab.png',
      name: 'Big Beef Kebab',
      price: 17.0,
      rating: 4.6,
      description:
          'This burger uses 100% quality beef with sliced tomatoes, pickles, vegetable, union and and extra thick cheese. It tastes really great and it is the best in town.',
      categories: [
        Category(id: 1, image: 'assets/images/categories/burger', name: 'Burger'),
      ],
      toppings: [
        Topping(id: 1, image: 'assets/images/toppings/mustard.png', name: 'Mustard'),
        Topping(id: 2, image: 'assets/images/toppings/pepper-jack.png', name: 'Pepper Jack'),
        Topping(id: 3, image: 'assets/images/toppings/mushroom.png', name: 'Mushroom'),
        Topping(id: 4, image: 'assets/images/toppings/bacon.png', name: 'Bacon'),
      ],
      quantity: 60,
    ),
    const Food(
      id: 4,
      image: 'assets/images/foods/chicken-lemon.png',
      name: 'Chicken Lemon',
      price: 20.0,
      rating: 4.6,
      description:
          'This burger uses 100% quality beef with sliced tomatoes, pickles, vegetable, union and and extra thick cheese. It tastes really great and it is the best in town.',
      categories: [
        Category(id: 1, image: 'assets/images/categories/burger', name: 'Burger'),
      ],
      toppings: [
        Topping(id: 1, image: 'assets/images/toppings/mustard.png', name: 'Mustard'),
        Topping(id: 2, image: 'assets/images/toppings/pepper-jack.png', name: 'Pepper Jack'),
        Topping(id: 3, image: 'assets/images/toppings/mushroom.png', name: 'Mushroom'),
        Topping(id: 4, image: 'assets/images/toppings/bacon.png', name: 'Bacon'),
      ],
      quantity: 60,
    ),
    const Food(
      id: 5,
      image: 'assets/images/foods/bacon-burger.png',
      name: 'Bacon Burger',
      price: 20.0,
      rating: 4.6,
      description:
          'This burger uses 100% quality beef with sliced tomatoes, pickles, vegetable, union and and extra thick cheese. It tastes really great and it is the best in town.',
      categories: [
        Category(id: 1, image: 'assets/images/categories/burger', name: 'Burger'),
      ],
      toppings: [
        Topping(id: 1, image: 'assets/images/toppings/mustard.png', name: 'Mustard'),
        Topping(id: 2, image: 'assets/images/toppings/pepper-jack.png', name: 'Pepper Jack'),
        Topping(id: 3, image: 'assets/images/toppings/mushroom.png', name: 'Mushroom'),
        Topping(id: 4, image: 'assets/images/toppings/bacon.png', name: 'Bacon'),
      ],
      quantity: 60,
    ),
    const Food(
      id: 6,
      image: 'assets/images/foods/hot-chicken.png',
      name: 'Hot Chicken',
      price: 20.0,
      rating: 4.9,
      description:
          'This burger uses 100% quality beef with sliced tomatoes, pickles, vegetable, union and and extra thick cheese. It tastes really great and it is the best in town.',
      categories: [
        Category(id: 1, image: 'assets/images/categories/burger', name: 'Burger'),
      ],
      toppings: [
        Topping(id: 1, image: 'assets/images/toppings/mustard.png', name: 'Mustard'),
        Topping(id: 2, image: 'assets/images/toppings/pepper-jack.png', name: 'Pepper Jack'),
        Topping(id: 3, image: 'assets/images/toppings/mushroom.png', name: 'Mushroom'),
        Topping(id: 4, image: 'assets/images/toppings/bacon.png', name: 'Bacon'),
      ],
      quantity: 60,
    ),
    const Food(
      id: 7,
      image: 'assets/images/foods/kebab-turki.png',
      name: 'Kebab Turki',
      price: 12.50,
      rating: 4.6,
      description:
          'This burger uses 100% quality beef with sliced tomatoes, pickles, vegetable, union and and extra thick cheese. It tastes really great and it is the best in town.',
      categories: [
        Category(id: 1, image: 'assets/images/categories/burger', name: 'Burger'),
      ],
      toppings: [
        Topping(id: 1, image: 'assets/images/toppings/mustard.png', name: 'Mustard'),
        Topping(id: 2, image: 'assets/images/toppings/pepper-jack.png', name: 'Pepper Jack'),
        Topping(id: 3, image: 'assets/images/toppings/mushroom.png', name: 'Mushroom'),
        Topping(id: 4, image: 'assets/images/toppings/bacon.png', name: 'Bacon'),
      ],
      quantity: 60,
    ),
    const Food(
      id: 8,
      image: 'assets/images/foods/vege-burger.png',
      name: 'Vege Burger',
      price: 20.0,
      rating: 4.6,
      description:
          'This burger uses 100% quality beef with sliced tomatoes, pickles, vegetable, union and and extra thick cheese. It tastes really great and it is the best in town.',
      categories: [
        Category(id: 1, image: 'assets/images/categories/burger', name: 'Burger'),
      ],
      toppings: [
        Topping(id: 1, image: 'assets/images/toppings/mustard.png', name: 'Mustard'),
        Topping(id: 2, image: 'assets/images/toppings/pepper-jack.png', name: 'Pepper Jack'),
        Topping(id: 3, image: 'assets/images/toppings/mushroom.png', name: 'Mushroom'),
        Topping(id: 4, image: 'assets/images/toppings/bacon.png', name: 'Bacon'),
      ],
      quantity: 60,
    ),
    const Food(
      id: 9,
      image: 'assets/images/foods/vege-kebab.png',
      name: 'Vege Kebab',
      price: 20.0,
      rating: 4.6,
      description:
          'This burger uses 100% quality beef with sliced tomatoes, pickles, vegetable, union and and extra thick cheese. It tastes really great and it is the best in town.',
      categories: [
        Category(id: 1, image: 'assets/images/categories/burger', name: 'Burger'),
      ],
      toppings: [
        Topping(id: 1, image: 'assets/images/toppings/mustard.png', name: 'Mustard'),
        Topping(id: 2, image: 'assets/images/toppings/pepper-jack.png', name: 'Pepper Jack'),
        Topping(id: 3, image: 'assets/images/toppings/mushroom.png', name: 'Mushroom'),
        Topping(id: 4, image: 'assets/images/toppings/bacon.png', name: 'Bacon'),
      ],
      quantity: 60,
    ),
    const Food(
      id: 10,
      image: 'assets/images/foods/huki-burger.png',
      name: 'Huki Burger',
      price: 15.0,
      rating: 4.9,
      description:
          'This burger uses 100% quality beef with sliced tomatoes, pickles, vegetable, union and and extra thick cheese. It tastes really great and it is the best in town.',
      categories: [
        Category(id: 1, image: 'assets/images/categories/burger', name: 'Burger'),
      ],
      toppings: [
        Topping(id: 1, image: 'assets/images/toppings/mustard.png', name: 'Mustard'),
        Topping(id: 2, image: 'assets/images/toppings/pepper-jack.png', name: 'Pepper Jack'),
        Topping(id: 3, image: 'assets/images/toppings/mushroom.png', name: 'Mushroom'),
        Topping(id: 4, image: 'assets/images/toppings/bacon.png', name: 'Bacon'),
      ],
      quantity: 60,
    ),
    const Food(
      id: 11,
      image: 'assets/images/foods/kebab-pizza.png',
      name: 'Kebab Pizza',
      price: 15.0,
      rating: 4.6,
      description:
          'This burger uses 100% quality beef with sliced tomatoes, pickles, vegetable, union and and extra thick cheese. It tastes really great and it is the best in town.',
      categories: [
        Category(id: 1, image: 'assets/images/categories/burger', name: 'Burger'),
      ],
      toppings: [
        Topping(id: 1, image: 'assets/images/toppings/mustard.png', name: 'Mustard'),
        Topping(id: 2, image: 'assets/images/toppings/pepper-jack.png', name: 'Pepper Jack'),
        Topping(id: 3, image: 'assets/images/toppings/mushroom.png', name: 'Mushroom'),
        Topping(id: 4, image: 'assets/images/toppings/bacon.png', name: 'Bacon'),
      ],
      quantity: 60,
    ),
    const Food(
      id: 12,
      image: 'assets/images/foods/grilled-chicken.png',
      name: 'Grilled Chicken',
      price: 20.0,
      rating: 4.6,
      description:
          'This burger uses 100% quality beef with sliced tomatoes, pickles, vegetable, union and and extra thick cheese. It tastes really great and it is the best in town.',
      categories: [
        Category(id: 1, image: 'assets/images/categories/burger', name: 'Burger'),
      ],
      toppings: [
        Topping(id: 1, image: 'assets/images/toppings/mustard.png', name: 'Mustard'),
        Topping(id: 2, image: 'assets/images/toppings/pepper-jack.png', name: 'Pepper Jack'),
        Topping(id: 3, image: 'assets/images/toppings/mushroom.png', name: 'Mushroom'),
        Topping(id: 4, image: 'assets/images/toppings/bacon.png', name: 'Bacon'),
      ],
      quantity: 60,
    ),
    const Food(
      id: 13,
      image: 'assets/images/foods/double-kebab.png',
      name: 'Double Kebab',
      price: 20.0,
      rating: 4.9,
      description:
          'This burger uses 100% quality beef with sliced tomatoes, pickles, vegetable, union and and extra thick cheese. It tastes really great and it is the best in town.',
      categories: [
        Category(id: 1, image: 'assets/images/categories/burger', name: 'Burger'),
      ],
      toppings: [
        Topping(id: 1, image: 'assets/images/toppings/mustard.png', name: 'Mustard'),
        Topping(id: 2, image: 'assets/images/toppings/pepper-jack.png', name: 'Pepper Jack'),
        Topping(id: 3, image: 'assets/images/toppings/mushroom.png', name: 'Mushroom'),
        Topping(id: 4, image: 'assets/images/toppings/bacon.png', name: 'Bacon'),
      ],
      quantity: 60,
    ),
    const Food(
      id: 14,
      image: 'assets/images/foods/balado-chicken.png',
      name: 'Balado Chicken',
      price: 20.0,
      rating: 4.6,
      description:
          'This burger uses 100% quality beef with sliced tomatoes, pickles, vegetable, union and and extra thick cheese. It tastes really great and it is the best in town.',
      categories: [
        Category(id: 1, image: 'assets/images/categories/burger', name: 'Burger'),
      ],
      toppings: [
        Topping(id: 1, image: 'assets/images/toppings/mustard.png', name: 'Mustard'),
        Topping(id: 2, image: 'assets/images/toppings/pepper-jack.png', name: 'Pepper Jack'),
        Topping(id: 3, image: 'assets/images/toppings/mushroom.png', name: 'Mushroom'),
        Topping(id: 4, image: 'assets/images/toppings/bacon.png', name: 'Bacon'),
      ],
      quantity: 60,
    ),
    const Food(
      id: 15,
      image: 'assets/images/foods/chicken-guling.png',
      name: 'Chicken Guling',
      price: 20.0,
      rating: 4.6,
      description:
          'This burger uses 100% quality beef with sliced tomatoes, pickles, vegetable, union and and extra thick cheese. It tastes really great and it is the best in town.',
      categories: [
        Category(id: 1, image: 'assets/images/categories/burger', name: 'Burger'),
      ],
      toppings: [
        Topping(id: 1, image: 'assets/images/toppings/mustard.png', name: 'Mustard'),
        Topping(id: 2, image: 'assets/images/toppings/pepper-jack.png', name: 'Pepper Jack'),
        Topping(id: 3, image: 'assets/images/toppings/mushroom.png', name: 'Mushroom'),
        Topping(id: 4, image: 'assets/images/toppings/bacon.png', name: 'Bacon'),
      ],
      quantity: 60,
    ),
    const Food(
      id: 16,
      image: 'assets/images/foods/chicken-potato.png',
      name: 'Chicken Potato',
      price: 20.0,
      rating: 4.6,
      description:
          'This burger uses 100% quality beef with sliced tomatoes, pickles, vegetable, union and and extra thick cheese. It tastes really great and it is the best in town.',
      categories: [
        Category(id: 1, image: 'assets/images/categories/burger', name: 'Burger'),
      ],
      toppings: [
        Topping(id: 1, image: 'assets/images/toppings/mustard.png', name: 'Mustard'),
        Topping(id: 2, image: 'assets/images/toppings/pepper-jack.png', name: 'Pepper Jack'),
        Topping(id: 3, image: 'assets/images/toppings/mushroom.png', name: 'Mushroom'),
        Topping(id: 4, image: 'assets/images/toppings/bacon.png', name: 'Bacon'),
      ],
      quantity: 60,
    ),
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        splashRadius: 20,
        icon: const Icon(Icons.cancel_rounded),
        onPressed: () {
          query = '';
        },
      ),
      IconButton(
        splashRadius: 20,
        icon: const Icon(Icons.tune_rounded),
        onPressed: () {},
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Food> matchQuery = [];
    for (var food in searchTerms) {
      if (food.name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(food);
      }
    }

    return matchQuery.isEmpty
        ? const Center(
            child: Text(
              'No results found',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: CustomColor.blackColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        : Column(
            children: [
              const SizedBox(height: 20),
              ResultText(query: query),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  itemCount: matchQuery.length,
                  itemBuilder: (context, int index) {
                    Food food = matchQuery[index];

                    return FoodTile(
                      food: food,
                      onTap: () {
                        router.Router.pushNamed(FoodDetailScreen.routeName, args: food);
                      },
                      toggleFavorite: () {},
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    mainAxisExtent: 230,
                  ),
                ),
              ),
            ],
          );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Food> matchQuery = [];
    for (var food in searchTerms) {
      if (food.name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(food);
      }
    }

    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      itemCount: matchQuery.length,
      itemBuilder: (context, int index) {
        Food food = matchQuery[index];

        return FoodTile(
          food: food,
          onTap: () {
            router.Router.pushNamed(FoodDetailScreen.routeName, args: food);
          },
          toggleFavorite: () {},
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        mainAxisExtent: 230,
      ),
    );
  }
}
