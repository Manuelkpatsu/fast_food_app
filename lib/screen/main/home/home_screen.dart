import 'package:fast_food_app/models/category.dart';
import 'package:fast_food_app/models/food.dart';
import 'package:fast_food_app/models/topping.dart';
import 'package:fast_food_app/screen/main/category/category_screen.dart';
import 'package:fast_food_app/screen/main/food_detail/food_detail_screen.dart';
import 'package:fast_food_app/screen/main/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:fast_food_app/screen/router.dart' as router;

import 'widget/best_seller_tile.dart';
import 'widget/filter_button.dart';
import 'widget/header_text.dart';
import 'widget/home_category_tile.dart';
import 'widget/logo.dart';
import 'widget/message_text.dart';
import 'widget/food_tile.dart';
import 'widget/search_text_field.dart';
import 'widget/see_all_button.dart';
import 'widget/hello_text.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<Category> categories = [
    const Category(id: 1, image: 'assets/images/categories/burger.png', name: 'Burger'),
    const Category(id: 2, image: 'assets/images/categories/kebab.png', name: 'Kebab'),
    const Category(id: 3, image: 'assets/images/categories/chicken.png', name: 'Chicken'),
  ];
  final List<Food> popularFoods = [
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
      image: 'assets/images/foods/huki-burger.png',
      name: 'Huki Burger',
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
      quantity: 46,
    ),
    const Food(
      id: 3,
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
  ];
  final Food bestSeller = const Food(
    id: 1,
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
  );

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 180,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Logo(),
            const SizedBox(height: 17),
            const HelloText(name: 'Manuel'),
            const MessageText(),
            const SizedBox(height: 15),
            Row(
              children: [
                SearchTextField(
                  controller: _searchController,
                  onTap: () => _navigateToSearchScreen(),
                  onChanged: (value) {},
                  readOnly: true,
                ),
                const SizedBox(width: 16),
                FilterButton(onPressed: () {}),
              ],
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const HeaderText(title: 'Food Category'),
                  SeeAllButton(
                    onPressed: () => router.Router.pushNamed(CategoryScreen.routeName),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 56,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemCount: categories.length > 3 ? 3 : categories.length,
                itemBuilder: (ctx, index) {
                  Category category = categories[index];

                  return Padding(
                    padding: EdgeInsets.only(right: categories.length - 1 == index ? 0 : 16),
                    child: HomeCategoryTile(
                      category: category,
                      onTap: () {},
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const HeaderText(title: 'Popular Food'),
                  SeeAllButton(onPressed: () => _navigateToSearchScreen()),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemCount: popularFoods.length > 3 ? 3 : popularFoods.length,
                itemBuilder: (ctx, index) {
                  Food food = popularFoods[index];

                  return Padding(
                    padding: EdgeInsets.only(right: categories.length - 1 == index ? 0 : 16),
                    child: FoodTile(
                      food: food,
                      onTap: () {
                        router.Router.pushNamed(FoodDetailScreen.routeName, args: food);
                      },
                      toggleFavorite: () {},
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: HeaderText(title: 'Best Seller'),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: BestSellerTile(
                onTap: () {
                  router.Router.pushNamed(FoodDetailScreen.routeName, args: bestSeller);
                },
                toggleFavorite: () {},
                food: bestSeller,
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  void _navigateToSearchScreen() {
    showSearch(
      context: context,
      delegate: SearchScreen(),
      useRootNavigator: true,
    );
  }
}
