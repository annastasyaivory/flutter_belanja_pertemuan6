import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping List"),
      ),
      body: Center(
        child: Text(itemArgs.name + " price " + itemArgs.price.toString()),
      ),
    );
  }
}
