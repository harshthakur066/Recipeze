import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String mealId;
  final String mealTitle;

  const CategoryMealsScreen(this.mealId, this.mealTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          mealTitle,
        ),
      ),
      body: Center(
        child: Text(
          'The recipies!!',
        ),
      ),
    );
  }
}
