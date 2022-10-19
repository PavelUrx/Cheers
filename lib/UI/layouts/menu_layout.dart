import 'package:cheers/UI/themes/app_theme.dart';
import 'package:cheers/UI/widgets/column_widget.dart';
import 'package:cheers/routes/app_routes.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: BasicColumn(
          inputList: [
            Text('Welcome to Cheers!', style: HeaderText.textStyle),
            const Text(
              'Go and mix your drink...',
            ),
            TextButton(
                onPressed: () => AppRoutes().cheers(context),
                child: Text('CHEERS!', style: HeaderText.textStyle)),
          ],
        ));
  }
}
