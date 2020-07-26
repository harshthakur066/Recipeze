import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final categoryId = ModalRoute.of(context).settings.arguments as String;
    // final categoryId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryId),
      ),
      body: Center(
        child: Text('Meal Detail'),
      ),
    );
  }
}
