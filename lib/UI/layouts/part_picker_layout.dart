import 'package:cheers/UI/widgets/column_widget.dart';
import 'package:cheers/data/ingredients_provider_data.dart';
import 'package:cheers/routes/app_routes.dart';
import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class PartPicker extends StatelessWidget {
  const PartPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IngredientsProvider ingredientsProvider = IngredientsProvider();
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: BasicColumn(
          key: key,
          inputList: [
            Text('Choose ingredients', style: HeaderText.textStyle),
            Container(
                width: 350,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.blue),
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
                child: ingredientsProvider.getIngredientsWidget()),
            TextButton(
                onPressed: () => AppRoutes()
                    .partSetter(context, ingredientsProvider.jsonCollector),
                child: Text('Next', style: HeaderText.textStyle)),
          ],
        )));
  }
}
