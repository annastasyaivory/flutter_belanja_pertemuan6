import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Released Korean Drama"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        decoration: buildBoxDecoration(),
        margin: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              itemArgs.name,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Text(
              itemArgs.release,
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
            Image.asset(itemArgs.image),
            Text(
              itemArgs.desc,
              style: TextStyle(color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          //jumlah stop berbanding lurus dengan jumlah warna
          stops: [0.3, 0.6, 0.9],
          colors: [
            Color.fromRGBO(255, 105, 180, 1),
            Color.fromRGBO(255, 182, 193, 1),
            Color.fromRGBO(255, 192, 203, 1),
          ],
        ),
        boxShadow: []);
  }
}
