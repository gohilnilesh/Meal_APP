import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';
  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  @override
  bool _glutenFree = false;
  bool _lactoseFree = false;
  bool _vegan = false;
  bool _vegetarian = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'gluten': _glutenFree,
                'lactose': _lactoseFree,
                'vegan': _vegan,
                'vegetarian': _vegetarian,
              };
            },
          ),
        ],
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              'Adjust Your Meals Selection',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                SwitchListTile(
                  title: Text('Gluten Free'),
                  subtitle: Text('Only Include Gluten Free Meals'),
                  value: _glutenFree,
                  onChanged: (newValue) {
                    setState(() {
                      _glutenFree = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text('Lactose Free'),
                  subtitle: Text('Only Include Lactose Free Meals'),
                  value: _lactoseFree,
                  onChanged: (newValue) {
                    setState(() {
                      _lactoseFree = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text('Vegen '),
                  subtitle: Text('Only Include Vegan Meals'),
                  value: _vegan,
                  onChanged: (newValue) {
                    setState(() {
                      _vegan = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text('Vegetarian'),
                  subtitle: Text('Only Include Vegetarian Meals'),
                  value: _vegetarian,
                  onChanged: (newValue) {
                    setState(() {
                      _vegetarian = newValue;
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
