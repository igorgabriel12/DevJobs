import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primeirfey5hta Tela"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Abrir"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {}),
            );
          },
        ),
      ),
    );
  }
}
