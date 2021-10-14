import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_task_1/models/recipe.dart';
import 'package:flutter_task_1/screens/recipescreen.dart';
import 'package:flutter_task_1/widgets/item_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => RecipeScreen(
                  recipe: recipe,
                )));
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Fooder"),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Stack(children: [
                ItemBox(
                  recipe: recipe,
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Text(recipe.subtitle,
                      style: GoogleFonts.notoSans(
                          fontSize: 18, color: Colors.black)),
                ),
                Positioned(
                    top: 30,
                    left: 10,
                    child: Text(recipe.title,
                        style: GoogleFonts.notoSans(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)))
              ]),
            ),
          )),
    );
  }
}
