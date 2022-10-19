import 'dart:io';
import 'package:cheers/UI/widgets/column_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

import '../UI/themes/app_theme.dart';

class Requestor {
  Requestor();

  Future<List> postRequest(Map jsonIn) async {
    Uri url =
        Uri.parse('https://cheers-d7170syat-pavelurx.vercel.app/postdata');
    final headers = {HttpHeaders.contentTypeHeader: 'application/json'};
    return jsonDecode((await post(url,
            body: json.encode(json.decode(jsonIn.toString())),
            headers: headers))
        .body);
  }
/*
  Future<Map> getData(Map jsonIn) async {
    return jsonDecode(await postRequest(jsonIn));
  }*/

  Widget buildColumn(BuildContext context, Map jsonIn) {
    return FutureBuilder<List?>(
        future: postRequest(jsonIn),
        builder: (context, dataSnapshot) {
          if (dataSnapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else {
            if (dataSnapshot.error != null) {
              return const Text('An error occured');
            } else {
              final ingredients = dataSnapshot.data!;
              return BasicColumn(
                inputList: [
                  for (dynamic item in ingredients)
                    Text(item["name"] + " : " + item['value'].toString(),
                        style: HeaderText.textStyle)
                ],
              );
            }
          }
        });
  }
}
