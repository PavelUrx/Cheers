import 'package:cheers/UI/layouts/final_layout.dart';
import 'package:cheers/UI/layouts/help_layout.dart';
import 'package:cheers/UI/layouts/part_picker_layout.dart';
import 'package:cheers/UI/layouts/part_setter_layout.dart';
import 'package:cheers/data/json_collector_data.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  AppRoutes();

  void cheers(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Help()));
  }

  void helpNext(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Help()));
  }

  void partPicker(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const PartPicker()));
  }

  void partSetter(context, JsonCollector collector) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PartSetter(jsonCollector: collector)));
  }

  void finalScreen(context, Widget ingredients) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Final(
                  ingredients: ingredients,
                )));
  }
}
