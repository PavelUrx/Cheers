import 'package:cheers/data/ingredient_struct_data.dart';
import 'package:cheers/data/value_struct_data.dart';
import 'dart:convert';

class JsonCollector {
  List ingredientList = <Ingredient>[];
  List limitValues = <LimitValue>[];

  void addIngredient(Ingredient ingredient) {
    ingredientList.add(ingredient);
  }

  void removeIngredient(Ingredient ingredient) {
    ingredientList.remove(ingredient);
  }

  void addLimitValue(LimitValue limitValue) async {
    if (!ingredientList.contains(limitValue)) {
      limitValues.add(limitValue);
    }
  }

  String toJsonString() {
    String finalJson = '';
    finalJson += jsonEncode(limitValues);
    finalJson += jsonEncode(ingredientList);
    return finalJson;
  }

  Map toJson() => {
        '"values"': jsonEncode(limitValues),
        '"ingredients"': jsonEncode(ingredientList)
      };
}
