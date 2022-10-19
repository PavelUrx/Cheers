import 'package:cheers/data/json_collector_data.dart';
import 'package:cheers/data/value_struct_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class ValueWidget extends StatefulWidget {
  JsonCollector jsonCollector;
  String category;
  ValueWidget({Key? key, required this.category, required this.jsonCollector})
      : super(key: key);

  @override
  State<ValueWidget> createState() => _ValueWidgetState();

  JsonCollector getCollector() {
    return jsonCollector;
  }
}

class _ValueWidgetState extends State<ValueWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 30,
          child: TextField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            maxLength: 3,
            onSubmitted: (String val) => widget.jsonCollector.addLimitValue(
                LimitValue(widget.category, int.parse(val), "l")),
          ),
        ),
        Text('≤ ${widget.category} ≤'),
        SizedBox(
          width: 30,
          child: TextField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            maxLength: 3,
            onSubmitted: (String val) => widget.jsonCollector.addLimitValue(
                LimitValue(widget.category, int.parse(val), "g")),
          ),
        ),
      ],
    );
  }
}
