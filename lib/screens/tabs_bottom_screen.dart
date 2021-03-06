import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/drawer_content.dart';
import 'categories_screen.dart';
import 'favorite_screen.dart';

class TabsBottomScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;
  TabsBottomScreen(this.favoriteMeals);

  @override
  _TabsBottomScreenState createState() => _TabsBottomScreenState();
}

class _TabsBottomScreenState extends State<TabsBottomScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  void initState() {
    _pages = [
      {
        'title': 'Recipeze',
        'pages': CategoriesScreen(),
      },
      {
        'title': 'Your Favorites',
        'pages': FavoriteScreen(widget.favoriteMeals),
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            _pages[_selectedPageIndex]['title'],
          ),
        ),
        drawer: DrawerContent(),
        body: _pages[_selectedPageIndex]['pages'],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).accentColor,
          currentIndex: _selectedPageIndex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category),
              title: Text('Categories'),
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.favorite),
              title: Text('Favorite'),
            ),
          ],
        ),
      ),
    );
  }
}
