import 'package:cheers/UI/widgets/column_widget.dart';
import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

// ignore: must_be_immutable
class Final extends StatelessWidget {
  Widget ingredients;
  Final({Key? key, required this.ingredients}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: BasicColumn(
            key: key,
            inputList: [
              Text('Your drink contains:', style: HeaderText.textStyle),
              Container(
                  width: 350,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blue),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),
                  child: ingredients),
              const SizedBox(height: 100),
            ],
          ),
        ));
  }
}
