import 'package:flutter/material.dart';
import 'package:flutter_task_1/models/recipe.dart';
import 'package:flutter_task_1/screens/homescreen.dart';

void main() {
  var dolma = Recipe(
    title: 'Dolma',
    subtitle: 'Delicious Iraqi Dolma',
    imageUrl: 'assets/images/1.jpeg',
  );

  runApp(Fooder(
    recipe: dolma,
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
