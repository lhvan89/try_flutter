import 'package:flutter/material.dart';
import 'package:try_flutter/models/category_model.dart';

class CategoryMealsScreen extends StatelessWidget {

  CategoryModel item;

  CategoryMealsScreen(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Center(
        child: Text('The Recipes For The Category!'),
      ),
    );
  }
}
