import 'dart:convert';

import 'package:cheers/UI/widgets/column_widget.dart';
import 'package:cheers/UI/widgets/value_widget.dart';
import 'package:cheers/data/json_collector_data.dart';
import 'package:cheers/data/requestor.dart';
import 'package:cheers/routes/app_routes.dart';
import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class PartSetter extends StatelessWidget {
  final JsonCollector jsonCollector;
  const PartSetter({Key? key, required this.jsonCollector}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Requestor requestor = Requestor();
    List categories = [
      'calories',
      'fats',
      'carbohydrates',
      'proteins',
      'fiber',
      'alcohol'
    ];
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: BasicColumn(
          key: key,
          inputList: [
            Text('Set up your constraints', style: HeaderText.textStyle),
            const Text(
                'note: You need to set the value by clicking on checkmark'),
            Container(
              width: 350,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.blue),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              child: Column(
                  children: categories
                      .map((category) => ValueWidget(
                          category: category, jsonCollector: jsonCollector))
                      .toList()),
            ),
            TextButton(
                onPressed: () async {
                  AppRoutes().finalScreen(context,
                      requestor.buildColumn(context, jsonCollector.toJson()));
                },
                child: Text('Next', style: HeaderText.textStyle)),
          ],
        )));
  }
}
