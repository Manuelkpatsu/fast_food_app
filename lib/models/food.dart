import 'package:equatable/equatable.dart';

import 'category.dart';
import 'topping.dart';

class Food extends Equatable {
  final int id;
  final String image;
  final String name;
  final double price;
  final double rating;
  final String description;
  final List<Category> categories;
  final List<Topping> toppings;
  final int quantity;

  const Food({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
    required this.description,
    required this.categories,
    required this.toppings,
    required this.quantity,
  });

  @override
  List<Object?> get props => [
        id,
        image,
        name,
        price,
        rating,
        description,
        categories,
        toppings,
        quantity,
      ];
}
