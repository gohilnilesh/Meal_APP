import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../screens/categories_screen.dart';
import '../screens/favourite_screen.dart';
import '../models/meal.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favouriteMeals;

  TabsScreen(this.favouriteMeals);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, dynamic>>
  _pages =  [
      {
        'page': CategoriesScreen(),
        'title': 'Category',
      },
      {
        'page': FavouriteScreen(),
        'title': 'Favourites',
      },
    ];

  int _selectIndexPage = 0;


  void _selectPage(int index) {
    setState(() {
      _selectIndexPage = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pages[_selectIndexPage]['title'],
        ),
      ),
      drawer: const MainDrawer(),
      body: _pages[_selectIndexPage]['page'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndexPage,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.shifting,
        onTap: _selectPage,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(Icons.star),
            label: 'Favourites',
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
