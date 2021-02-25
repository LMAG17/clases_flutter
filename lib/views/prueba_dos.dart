import 'package:flutter/material.dart';

class PruebaDos extends StatefulWidget {
  PruebaDos({Key key}) : super(key: key);

  @override
  _PruebaDosState createState() => _PruebaDosState();
}

class _PruebaDosState extends State<PruebaDos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Text("Prueba dos"),
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("El dialogo"),
                    actions: [
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Cerrar"),
                      ),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
