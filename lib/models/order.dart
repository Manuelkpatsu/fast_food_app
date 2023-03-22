import 'package:equatable/equatable.dart';

import 'address.dart';
import 'food.dart';
import 'payment_method.dart';

enum OrderStatus { received, confirmed, onDelivery, completed }

class Order extends Equatable {
  final int id;
  final List<Food> foods;
  final OrderStatus orderStatus;
  final PaymentMethod paymentMethod;
  final Address address;
  final String note;

  const Order({
    required this.id,
    required this.foods,
    required this.orderStatus,
    required this.paymentMethod,
    required this.address,
    required this.note,
  });

  @override
  List<Object?> get props => [id, foods, orderStatus, paymentMethod, address, note];
}
