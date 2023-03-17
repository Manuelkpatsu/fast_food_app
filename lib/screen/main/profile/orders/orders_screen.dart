import 'package:fast_food_app/models/address.dart';
import 'package:fast_food_app/models/category.dart';
import 'package:fast_food_app/models/food.dart';
import 'package:fast_food_app/models/order.dart';
import 'package:fast_food_app/models/payment_method.dart';
import 'package:fast_food_app/models/topping.dart';
import 'package:fast_food_app/screen/widget/app_bar_title.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

import 'history.dart';
import 'ongoing_orders.dart';

class OrdersScreen extends StatefulWidget {
  static const routeName = '/orders';

  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen>
    with AutomaticKeepAliveClientMixin<OrdersScreen> {
  final List<Order> _historyOrders = [
    const Order(
      id: 1,
      foods: [
        Food(
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
        Food(
          id: 2,
          image: 'assets/images/foods/monstera-burger.png',
          name: 'Monstera Burger',
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
          quantity: 1,
        ),
      ],
      orderStatus: OrderStatus.completed,
      paymentMethod: PaymentMethod(
        id: 1,
        name: 'Case Card',
        image: 'assets/images/payments/case-card.png',
      ),
      address: Address(
        id: 1,
        label: 'Home',
        phoneNumber: '(62) 123-456',
        streetAddress: 'Street: 18 Sun City, Cibadak',
      ),
    ),
  ];
  final List<Order> _ongoingOrders = [];

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const AppBarTitle(title: 'My Orders'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TabBar(
              padding: EdgeInsets.symmetric(horizontal: 12),
              tabs: [
                Tab(text: 'History'),
                Tab(text: 'Ongoing'),
              ],
              isScrollable: true,
              unselectedLabelColor: Colors.black,
              labelColor: CustomColor.tabActiveColor,
              indicatorSize: TabBarIndicatorSize.label,
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              indicatorColor: CustomColor.primaryColor,
              indicatorWeight: 4,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  History(orders: _historyOrders),
                  OngoingOrders(orders: _ongoingOrders),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
