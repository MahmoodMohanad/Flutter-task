import 'package:flutter/material.dart';
import 'package:flutter_task_1/models/recipe.dart';

class ItemBox extends StatelessWidget {
  const ItemBox({Key? key, required this.recipe}) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        recipe.imageUrl,
        width: double.infinity,
        height: 400,
        fit: BoxFit.fitWidth,
        alignment: AlignmentDirectional.topStart,
      ),
    );
  }
}
