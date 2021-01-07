import 'package:flutter/material.dart';
import 'package:try_flutter/category_meals_screen.dart';
import 'package:try_flutter/models/category_model.dart';

class CategoriesScreen extends StatelessWidget {
  void selectCategory(BuildContext context, CategoryModel item) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return CategoryMealsScreen(item);
        },
      ),
    );
  }

  @override
  List<CategoryModel> listItem = CategoryModel.fakeCategory;

  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(16),
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 3 / 2,
      children: listItem.map((item) => _buildCategoryItem(context, item)).toList(),
    );
  }

  Widget _buildCategoryItem(BuildContext context, CategoryModel item) {
    return InkWell(
      onTap: () => selectCategory(context, item),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Text(item.title, style: Theme.of(context).textTheme.title),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [item.color.withOpacity(0.5), item.color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
