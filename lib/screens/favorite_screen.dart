import 'package:flutter/material.dart';

import '../models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  FavoriteScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'You have no favorite. Start adding some',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
