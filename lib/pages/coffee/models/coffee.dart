import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/icons/app_icons.dart';

class Coffee {
  final String name;
  final String image;
  final double price;
  final String description;
  const Coffee(
      {required this.name,
      required this.image,
      required this.price,
      required this.description});
}

const List<Coffee> coffeeList = [
  Coffee(
      image: PngIcons.milk,
      name: 'Latte',
      price: 65,
      description: 'Width Qat Milk'),
  Coffee(
      image: PngIcons.latte,
      name: 'Milk',
      price: 75,
      description: 'Widt  Qat Latte'),
  Coffee(
      image: PngIcons.coffee,
      name: 'Coffee',
      price: 85,
      description: 'Widt Chocolate'),
];
