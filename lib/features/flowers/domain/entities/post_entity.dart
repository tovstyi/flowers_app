import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class PostEntity extends Equatable {
  final int id;

  /// assets/flowers/imageName
  final String imageName;
  final String name;
  final String description;
  final Color color;

  /// Sizes: 1, 2, 3
  final int size;
  final int quantity;
  final int price;

  const PostEntity(
      {required this.id,
      required this.imageName,
      required this.name,
      required this.description,
      required this.color,
      required this.size,
      required this.quantity,
      required this.price});

  @override
  List<Object?> get props =>
      [id, imageName, name, description, color, size, quantity, price];
}
