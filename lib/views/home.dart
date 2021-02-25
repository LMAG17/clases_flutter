import 'package:aprendiendo_flutter/views/prueba_dos.dart';
import 'package:aprendiendo_flutter/views/prueba_uno.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Pruebas"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text("Usuario"),
                ),
              ),
              ListTile(
                title: Text("prueba 1"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PruebaUno()));
                },
              ),
              ListTile(
                title: Text("prueba 2"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PruebaDos()));
                },
              ),
              ListTile(
                title: Text("prueba 3"),
              ),
              ListTile(
                title: Text("prueba 4"),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                "https://i.pinimg.com/originals/81/e2/28/81e2285225282c6dc6cbca2545da669a.jpg"),
            Image.asset("assets/images/gato.jpg")
          ],
        ),
      ),
    );
  }
}
