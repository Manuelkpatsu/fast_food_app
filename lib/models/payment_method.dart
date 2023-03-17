import 'package:equatable/equatable.dart';

class PaymentMethod extends Equatable {
  final int id;
  final String name;
  final String image;

  const PaymentMethod({required this.id, required this.name, required this.image});

  @override
  List<Object?> get props => [id, name, image];
}
