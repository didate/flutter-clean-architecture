// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  String id;
  String name;
  String description;
  double price;
  String image;
  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  @override
  List<Object?> get props => [id];
}
