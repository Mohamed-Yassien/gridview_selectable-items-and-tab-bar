import 'package:flutter/material.dart';

class ItemModel {
  final String title;
  final Color color;

  ItemModel({
    required this.color,
    required this.title,
  });

  static List<ItemModel> demoItems = [
    ItemModel(color: Colors.red, title: 'ahly'),
    ItemModel(color: Colors.pink, title: 'liverpool'),
    ItemModel(color: Colors.white12, title: 'madrid'),
    ItemModel(color: Colors.blue, title: 'chelsea'),
    ItemModel(color: Colors.amber, title: 'brazil'),
  ];
}
