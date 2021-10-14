class Ingredient {
  String name = '';
  double quantity = 0;
  String mesuringUnit = '';

  static List<Ingredient> ingredients = [
    Ingredient('Eggplant', 0.5, 'Kg'),
    Ingredient('Onion', 0.5, 'Kg'),
    Ingredient('Tomato', 0.5, 'Kg')
  ];

  Ingredient(this.name, this.quantity, this.mesuringUnit);
}
