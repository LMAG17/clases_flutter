import 'package:flutter/material.dart';

class PruebaUno extends StatefulWidget {
  PruebaUno({Key key}) : super(key: key);

  @override
  _PruebaUnoState createState() => _PruebaUnoState();
}

class _PruebaUnoState extends State<PruebaUno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Prueba uno"),
      // ),
      body: Center(
        child: GestureDetector(
          child: Text("Esta es la prueba uno"),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
