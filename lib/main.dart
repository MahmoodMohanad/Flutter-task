import 'package:flutter/material.dart';

import 'package:flutter_task_1/models/recipe.dart';
import 'package:flutter_task_1/screens/homescreen.dart';

import 'models/ingredients.dart';

void main() {
  Recipe recipe = Recipe(
      title: 'Dolma',
      subtitle: 'Delicious Iraqi Dolma',
      imageUrl: 'assets/images/1.jpeg',
      ingredients: [
        Ingredient('Eggplant', 0.5, 'Kg'),
        Ingredient('Onion', 0.5, 'Kg'),
        Ingredient('Tomato', 0.5, 'Kg')
      ]);

  runApp(Fooder(
    recipe: recipe,
  ));
}

class Fooder extends StatelessWidget {
  const Fooder({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeScreen(
      recipe: recipe,
    ));
  }
}
