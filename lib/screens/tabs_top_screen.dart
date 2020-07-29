import 'package:flutter/material.dart';

import '../models/meal.dart';
import 'categories_screen.dart';
import 'favorite_screen.dart';

class TabsTopScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  TabsTopScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Recipeze'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.category),
                  text: 'Categories',
                ),
                Tab(
                  icon: Icon(Icons.favorite),
                  text: 'Favorite',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              CategoriesScreen(),
              FavoriteScreen(favoriteMeals),
            ],
          ),
        ));
  }
}
