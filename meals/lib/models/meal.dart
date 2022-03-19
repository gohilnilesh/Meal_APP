enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String title;
  final String id;
  final String imageUrl;
  final List<String> categories;
  final List<String> ingredients;
  final int duration;
  final List<String> steps;
  final Complexity complexity;
  final Affordability affordability;
  final bool isVegetarian;
  final bool isVegan;
  final bool isLactoseFree;
  final bool isGlutenFree;

  const Meal({
    required this.title,
    required this.id,
    required this.imageUrl,
    required this.categories,
    required this.ingredients,
    required this.duration,
    required this.steps,
    required this.complexity,
    required this.affordability,
    required this.isVegetarian,
    required this.isVegan,
    required this.isLactoseFree,
    required this.isGlutenFree,
  });

  
}
