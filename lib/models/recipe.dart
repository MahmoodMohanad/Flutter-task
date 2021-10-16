import 'ingredients.dart';

class Recipe {
  String title = '';
  String subtitle = '';
  String imageUrl = '';
  List<Ingredient> ingredients;

  Recipe({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.ingredients,
  });
}
