import 'package:equatable/equatable.dart';

import 'order.dart';

class OrderState extends Equatable {
  final OrderStatus orderStatus;
  final bool completed;
  final DateTime? date;

  const OrderState({
    required this.orderStatus,
    required this.completed,
    required this.date,
  });

  @override
  List<Object?> get props => [orderStatus, completed, date];
}
