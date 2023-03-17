import 'package:equatable/equatable.dart';

class Address extends Equatable {
  final int id;
  final String label;
  final String phoneNumber;
  final String streetAddress;

  const Address({
    required this.id,
    required this.label,
    required this.phoneNumber,
    required this.streetAddress,
  });

  @override
  List<Object?> get props => [id, label, phoneNumber, streetAddress];
}
