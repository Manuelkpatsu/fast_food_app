import 'package:fast_food_app/models/food.dart';
import 'package:fast_food_app/screen/main/cart/widget/quantity.dart';
import 'package:fast_food_app/screen/widget/app_bar_title.dart';
import 'package:fast_food_app/screen/widget/custom_button.dart';
import 'package:flutter/material.dart';

import 'widget/detail_text.dart';
import 'widget/food_detail_description.dart';
import 'widget/food_detail_name.dart';
import 'widget/food_detail_price.dart';
import 'widget/food_detail_rating.dart';
import 'widget/food_detail_thumbnail.dart';
import 'widget/free_shipping.dart';
import 'widget/topping_text.dart';
import 'widget/topping_tile.dart';

class FoodDetailScreen extends StatelessWidget {
  static const routeName = '/food_detail';

  final Food argument;

  const FoodDetailScreen({Key? key, required this.argument}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitle(title: 'Detail'),
        actions: [
          IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: Image.asset(
              'assets/images/heart.png',
              height: 24,
              width: 24,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: [
                const SizedBox(height: 20),
                FoodDetailThumbnail(thumbnail: argument.image),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FoodDetailName(name: argument.name),
                            FoodDetailRating(rating: argument.rating),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      FoodDetailPrice(price: argument.price),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const DetailText(),
                const SizedBox(height: 5),
                FoodDetailDescription(description: argument.description),
                const SizedBox(height: 20),
                Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    initiallyExpanded: true,
                    backgroundColor: Colors.transparent,
                    collapsedBackgroundColor: Colors.transparent,
                    tilePadding: const EdgeInsets.symmetric(horizontal: 24),
                    childrenPadding: const EdgeInsets.symmetric(horizontal: 24),
                    title: const ToppingText(),
                    iconColor: Colors.black,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Wrap(
                          spacing: 16,
                          children: argument.toppings.map((topping) {
                            return ToppingTile(thumbnail: topping.image);
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Quantity(
                        quantity: 1,
                        onDecreasePressed: () {},
                        onAddPressed: () {},
                        space: 10,
                        iconSpacing: 24,
                      ),
                      const FreeShipping(),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomButton(
              onPressed: () {},
              widget: const Text('Order Now'),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
