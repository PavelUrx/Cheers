import 'package:cheers/UI/widgets/ingredient_option_widget.dart';
import 'package:cheers/data/ingredient_struct_data.dart';
import 'package:cheers/data/json_collector_data.dart';
import 'package:flutter/material.dart';

class IngredientsProvider {
  List<Ingredient> ingredients = <Ingredient>[];
  JsonCollector jsonCollector = JsonCollector();

  IngredientsProvider() {
    updateIngredients();
  }

  void updateIngredients() {
    ingredients.add(Ingredient('pivo', 2.5, 0, 42, 2, 0.3, 0, 5));
    ingredients.add(Ingredient('vino', 15, 0, 63, 0.4, 0.1, 0, 12.5));
    ingredients.add(Ingredient('rum', 40, 0, 0, 0, 0, 0, 40));
    ingredients.add(Ingredient('vodka', 20, 0, 174, 0, 0, 0, 40));
    ingredients.add(Ingredient('dzus', 4, 0, 42, 9, 0.7, 0, 0));
    ingredients.add(Ingredient('coca-cola', 4, 0, 45, 11, 0, 0, 0));
    ingredients.add(Ingredient('gin', 40, 0, 191, 0, 0, 0, 40));
    ingredients.add(Ingredient('cider', 3, 0.5, 54, 8, 0, 0, 5));
    ingredients.add(Ingredient('prosecco', 18, 0.08, 66, 2, 0, 0, 12));
  }

  Column getIngredientsWidget() {
    return Column(
      children: ingredients
          .map((item) => IngredientOption(
                ingredient: item,
                jsonCollector: jsonCollector,
              ))
          .toList(),
    );
  }
}
