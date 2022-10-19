import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BasicColumn extends StatefulWidget {
  List<Widget> inputList = [];
  BasicColumn({Key? key, required this.inputList}) : super(key: key);

  @override
  State<BasicColumn> createState() => _BasicColumnState();
}

class _BasicColumnState extends State<BasicColumn> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (Widget item in widget.inputList) item,
        ],
      ),
    );
  }
}
