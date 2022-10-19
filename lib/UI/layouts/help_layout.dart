import 'package:cheers/UI/widgets/column_widget.dart';
import 'package:cheers/routes/app_routes.dart';
import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: BasicColumn(
          key: key,
          inputList: [
            Text('Hint', style: HeaderText.textStyle),
            Container(
              width: 350,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.blue),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              child: Column(
                children: const [
                  Text(
                    'You can mix your drink by selecting ingredients and setting up few constraints, to have drink, you dream about!',
                  ),
                  Divider(
                    height: 20,
                    thickness: 1,
                    color: Colors.blue,
                  ),
                  Text(
                    '*note: Your drink will have the minimal possible price!',
                  ),
                ],
              ),
            ),
            TextButton(
                onPressed: () => AppRoutes().partPicker(context),
                child: Text(
                  'Next',
                  style: HeaderText.textStyle,
                )),
          ],
        )));
  }
}
