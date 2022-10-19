import 'package:cheers/UI/widgets/value_widget.dart';
import 'package:cheers/data/json_collector_data.dart';
import 'package:flutter/material.dart';

class ValuesProvider {
  late JsonCollector jsonCollector;

  ValuesProvider(JsonCollector jsonCollector);

  Row getValueWidgets() {
    List categories = [
      'calories',
      'fats',
      'carbohydrates',
      'proteins',
      'fiber',
      'alcohol'
    ];
    return Row(
      children: categories
          .map((category) =>
              ValueWidget(category: category, jsonCollector: jsonCollector))
          .toList(),
    );
  }
}
