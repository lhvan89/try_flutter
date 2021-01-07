import 'package:flutter/material.dart';

class CategoryModel {
  final String id;
  final String title;
  final Color color;

  const CategoryModel(this.id, this.title, this.color);
  
  static const fakeCategory = const[
    CategoryModel('c1', "Italian", Colors.red),
    CategoryModel('c2', 'Quick & Easy', Colors.green),
    CategoryModel('c1', "Hongkon", Colors.blue),
    CategoryModel('c2', 'Korea', Colors.yellow),
    CategoryModel('c1', "Italian", Colors.red),
    CategoryModel('c2', 'Quick & Easy', Colors.green),
    CategoryModel('c1', "Hongkon", Colors.blue),
    CategoryModel('c2', 'Korea', Colors.yellow),
    CategoryModel('c1', "Italian", Colors.red),
    CategoryModel('c2', 'Quick & Easy', Colors.green),
    CategoryModel('c1', "Hongkon", Colors.blue),
    CategoryModel('c2', 'Korea', Colors.yellow),
    CategoryModel('c1', "Italian", Colors.red),
    CategoryModel('c2', 'Quick & Easy', Colors.green),
    CategoryModel('c1', "Hongkon", Colors.blue),
    CategoryModel('c2', 'Korea', Colors.yellow),
  ];
}