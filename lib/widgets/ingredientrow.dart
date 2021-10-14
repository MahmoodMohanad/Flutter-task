import 'package:flutter/material.dart';
import 'package:flutter_task_1/models/ingredients.dart';
import 'package:google_fonts/google_fonts.dart';

class IngredientRow extends StatelessWidget {
  const IngredientRow({
    Key? key,
    required this.ingredient,
  }) : super(key: key);

  final Ingredient ingredient;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.black, width: 1)),
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: Center(
              child: Text(
                  '${ingredient.quantity} ${ingredient.mesuringUnit} ${ingredient.name}',
                  style:
                      GoogleFonts.notoSans(fontSize: 18, color: Colors.black)),
            ),
          )),
    );
  }
}
