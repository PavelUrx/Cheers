import 'package:cheers/data/ingredient_struct_data.dart';
import 'package:cheers/data/json_collector_data.dart';
import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

// ignore: must_be_immutable
class IngredientOption extends StatefulWidget {
  Ingredient ingredient;
  bool isChecked = false;
  JsonCollector jsonCollector;
  IngredientOption(
      {Key? key, required this.ingredient, required this.jsonCollector})
      : super(key: key);

  @override
  State<IngredientOption> createState() => _IngredientOptionState();

  JsonCollector getCollector() {
    return jsonCollector;
  }
}

class _IngredientOptionState extends State<IngredientOption> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.ingredient.name,
          style: HeaderText.textStyle,
        ),
        Checkbox(
            value: widget.isChecked,
            onChanged: (bool? value) {
              if (widget.isChecked) {
                widget.jsonCollector.removeIngredient(widget.ingredient);
              } else {
                widget.jsonCollector.addIngredient(widget.ingredient);
              }
              setState(() {
                widget.isChecked = value!;
              });
            })
      ],
    );
  }
}
