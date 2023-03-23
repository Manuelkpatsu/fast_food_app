import 'package:equatable/equatable.dart';

class CancelOrderReason extends Equatable {
  final int id;
  final String name;

  const CancelOrderReason({required this.id, required this.name});

  @override
  List<Object?> get props => [id, name];
}
