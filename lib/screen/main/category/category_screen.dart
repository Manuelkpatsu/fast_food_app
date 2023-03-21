import 'package:fast_food_app/models/category.dart';
import 'package:fast_food_app/screen/widget/app_bar_title.dart';
import 'package:flutter/material.dart';

import 'widget/category_tile.dart';

class CategoryScreen extends StatelessWidget {
  static const routeName = '/category';

  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Category> categories = [
      const Category(id: 1, image: 'assets/images/categories/burger.png', name: 'Burger'),
      const Category(id: 2, image: 'assets/images/categories/kebab.png', name: 'Kebab'),
      const Category(id: 3, image: 'assets/images/categories/chicken.png', name: 'Chicken'),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitle(title: 'Category'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
        itemCount: categories.length,
        itemBuilder: (context, int index) {
          Category category = categories[index];

          return CategoryTile(
            onTap: () {},
            category: category,
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          mainAxisExtent: 160,
        ),
      ),
    );
  }
}
