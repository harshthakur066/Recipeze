import 'package:flutter/material.dart';

import '../widgets/drawer_content.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      drawer: DrawerContent(),
      body: null,
    );
  }
}
