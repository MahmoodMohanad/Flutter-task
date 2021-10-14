import 'package:flutter/material.dart';
import 'package:flutter_task_1/models/ingredients.dart';
import 'package:flutter_task_1/models/recipe.dart';
import 'package:flutter_task_1/widgets/ingredientrow.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back)),
          title: Column(children: [
            Text(recipe.title),
            Text(
              recipe.subtitle,
              style: const TextStyle(fontSize: 16),
            )
          ]),
          centerTitle: true),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return IngredientRow(ingredient: Ingredient.ingredients[index]);
          }),
    );
  }
}
