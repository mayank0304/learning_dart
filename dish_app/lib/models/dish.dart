import 'package:flutter/material.dart';

class Dish{
  String imageUrl;
  String name;
  int price;
  double rating;
  Color? color;

  Dish({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.rating,
    required this.color
  });

  @override
  String toString() {
    return "$name | $price";
  }
}